/**
 * A layer's namespace document, with its glossary concepts in it.
 *
 * Every glossary concept a layer mints is named under its namespace,
 * `<iriBase>v<major>/ns/` (`instanceNamespaceOf`, `schemeIri` and `termIri`
 * in `glossary.ts`). The harness tools publish that address with the classes
 * and properties a layer mints (`publish-instance-context.ts vocab`), but
 * not its glossary concepts, so every concept IRI was a 404 on every
 * instance (owner, 2026-11-18, option 1A). This builds the namespace
 * document WITH them: one entry per scheme and per concept in the
 * machine-readable graph, and one anchor per concept in the page a person
 * reads, so `<ns>#glossary/<scheme>/<term>` lands on the concept's entry and
 * `<ns>glossary/<scheme>/<term>` has an entry naming it.
 *
 * The anchor of a concept is its IRI with the namespace taken off
 * (`glossary/<scheme>/<term>`). That is the fragment the hash spelling of a
 * concept IRI would carry, so the page serves either spelling of the
 * concept's address; which spelling the IRIs take is decided separately.
 *
 * Pure: no file is read or written here. `scripts/glossary-page.ts` writes
 * the document into a site being built.
 *
 * @module schemas/glossary-namespace
 * @graphNode none — a rendering of the glossary graph, not a schema of it
 *
 * @conformsTo w3c-skos
 * @conformsTo w3c-rdf
 */
import { schemeIri, termIri, type Glossary, type LangText } from "./glossary.ts";

/** One scheme as the namespace document needs it. */
export interface NamespaceScheme {
  glossary: Pick<Glossary, "id" | "title" | "description" | "terms">;
  /** Where the scheme's full SKOS is published, relative to the namespace document's directory. */
  skos?: string;
  /** A term's own page, relative to the namespace document's directory, when it has one. */
  pageOf?: (termId: string) => string | undefined;
}

/** The JSON-LD `@context` the concept entries are written against. */
export const NAMESPACE_CONTEXT: Readonly<Record<string, unknown>> = {
  rdfs: "http://www.w3.org/2000/01/rdf-schema#",
  owl: "http://www.w3.org/2002/07/owl#",
  skos: "http://www.w3.org/2004/02/skos/core#",
  dcterms: "http://purl.org/dc/terms/",
  label: "rdfs:label",
  comment: "rdfs:comment",
  isDefinedBy: { "@id": "rdfs:isDefinedBy", "@type": "@id" },
  seeAlso: { "@id": "rdfs:seeAlso", "@type": "@id" },
  prefLabel: "skos:prefLabel",
  definition: "skos:definition",
  inScheme: { "@id": "skos:inScheme", "@type": "@id" },
};

type Node = Record<string, unknown>;

const firstText = (t: LangText | undefined): string | undefined =>
  t === undefined ? undefined : typeof t === "string" ? t : (t.en ?? Object.values(t)[0]);

/**
 * The scheme and concept entries of a namespace: every concept whose IRI is
 * minted in `ns`. A term that names its own concept IRI elsewhere (`iri`) is
 * not this namespace's to serve and is left out.
 */
export function glossaryConceptNodes(ns: string, schemes: readonly NamespaceScheme[]): Node[] {
  const nodes: Node[] = [];
  for (const s of schemes) {
    const g = s.glossary;
    const scheme = schemeIri(ns, g);
    nodes.push({
      "@id": scheme,
      "@type": "skos:ConceptScheme",
      prefLabel: g.title,
      ...(g.description ? { definition: g.description } : {}),
      isDefinedBy: ns,
      ...(s.skos ? { seeAlso: s.skos } : {}),
    });
    for (const t of g.terms) {
      if (t.iri) continue;
      const page = s.pageOf?.(t.id);
      const definition = firstText(t.definition);
      nodes.push({
        "@id": termIri(ns, g, t.id),
        "@type": "skos:Concept",
        inScheme: scheme,
        prefLabel: firstText(t.prefLabel),
        ...(definition ? { definition } : {}),
        isDefinedBy: ns,
        ...(page ? { seeAlso: page } : {}),
      });
    }
  }
  return nodes;
}

/**
 * The namespace document: `base` (the layer's vocabulary as the tools build
 * it, when there is one) with the concept entries added, or a document of
 * the concepts alone. An entry `base` already holds is kept as it is.
 */
export function namespaceDocument(instance: string, ns: string, concepts: readonly Node[], base?: Node): Node {
  if (base !== undefined && base["@id"] !== ns) {
    throw new Error(`the vocabulary's @id ${String(base["@id"])} is not the namespace ${ns}`);
  }
  const graph = [...(((base?.["@graph"] as Node[] | undefined) ?? []) as Node[])];
  const held = new Set(graph.map((n) => expand(String(n["@id"]), base?.["@context"])));
  const added = concepts.filter((n) => !held.has(String(n["@id"])));
  const context = { ...NAMESPACE_CONTEXT, ...((base?.["@context"] as Node | undefined) ?? {}) };
  const { "@context": _c, "@id": _i, "@type": type, label, "@graph": _g, ...rest } = base ?? {};
  return {
    "@context": context,
    "@id": ns,
    "@type": type ?? "owl:Ontology",
    label: label ?? `${instance} namespace`,
    ...rest,
    "@graph": [...graph, ...added],
  };
}

/** A compact `prefix:local` id expanded against a context's prefixes; anything else as given. */
function expand(id: string, context: unknown): string {
  const m = /^([A-Za-z][\w.-]*):(?!\/\/)(.*)$/.exec(id);
  if (!m || typeof context !== "object" || context === null) return id;
  const p = (context as Record<string, unknown>)[m[1]!];
  return typeof p === "string" ? `${p}${m[2]}` : id;
}

/** An entry's anchor in the namespace page: its IRI with the namespace taken off, or undefined when it is not in the namespace. */
export function anchorIn(ns: string, iri: string): string | undefined {
  return iri.startsWith(ns) && iri.length > ns.length ? iri.slice(ns.length) : undefined;
}

const escHtml = (s: string) => s.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;");
const text = (v: unknown): string | undefined => {
  if (v === undefined || v === null) return undefined;
  if (typeof v === "string") return v;
  if (Array.isArray(v)) return text(v[0]);
  if (typeof v === "object" && "@value" in (v as Node)) return String((v as Node)["@value"]);
  return String(v);
};

/**
 * The page a static host serves at the namespace's address: one list item
 * per entry, each with the anchor {@link anchorIn} gives it, and the whole
 * document as `application/ld+json` for an agent (a static host cannot
 * negotiate content type, so one page carries both).
 */
export function namespaceHtml(instance: string, ns: string, doc: Node): string {
  const context = doc["@context"];
  const graph = ((doc["@graph"] as Node[] | undefined) ?? []).filter((n) => typeof n["@id"] === "string");
  const rows = graph
    .map((n) => {
      const iri = expand(String(n["@id"]), context);
      const anchor = anchorIn(ns, iri);
      const label = text(n["prefLabel"] ?? n["label"]) ?? iri;
      const def = text(n["definition"] ?? n["comment"]);
      const more = typeof n["seeAlso"] === "string" ? ` <a href="${escHtml(n["seeAlso"])}">more</a>` : "";
      const id = anchor === undefined ? "" : ` id="${escHtml(anchor)}"`;
      return `<li${id}><code>${escHtml(iri)}</code> ${escHtml(label)}${def === undefined ? "" : ` — ${escHtml(def)}`}${more}</li>`;
    })
    .join("\n");
  // `</` cannot appear inside the script element, so it is escaped in the JSON.
  const json = JSON.stringify(doc, null, 2).replace(/<\//g, "<\\/");
  return `<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${escHtml(instance)} namespace</title>
<link rel="alternate" type="application/ld+json" href="index.jsonld">
<script type="application/ld+json">
${json}
</script>
</head>
<body>
<h1>${escHtml(instance)} namespace</h1>
<p>Namespace <code>${escHtml(ns)}</code>. Machine-readable: <a href="index.jsonld">index.jsonld</a>.</p>
<ul>
${rows}
</ul>
</body>
</html>
`;
}

/**
 * Where the namespace document is written under a site published at
 * `siteBase`: the namespace's directory, holding `index.html` (what a static
 * host serves for `…/ns/`, and for `…/ns` by redirect), `index.jsonld` and
 * `index.json` (a static host sends no JSON-LD content type). Undefined when
 * the namespace is not under that site.
 */
export function namespacePaths(ns: string, siteBase: string): { html: string; jsonld: string; json: string } | undefined {
  const base = siteBase.endsWith("/") ? siteBase : `${siteBase}/`;
  if (!ns.startsWith(base)) return undefined;
  const rel = ns.slice(base.length).replace(/[#/]+$/, "");
  if (rel === "") return undefined;
  return { html: `${rel}/index.html`, jsonld: `${rel}/index.jsonld`, json: `${rel}/index.json` };
}
