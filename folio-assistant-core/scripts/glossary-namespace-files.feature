Feature: a site being built serves each in-scope layer's namespace document

  @test:scripts/glossary-namespace-files.test.ts::namespaceFiles::writes_the_namespace_document_of_a_layer_whose_namespace_is_under_the_site,_and_of_no_other
  Scenario: the namespace document of a layer under the site, and of no other
    Given two layers, one whose namespace is under the site's iriBase
    When the namespace files are computed
    Then only that layer's index.html, index.jsonld and index.json are written, holding its authored and extracted concepts

  @test:scripts/glossary-namespace-files.test.ts::namespaceFiles::links_a_term_page_only_when_this_run_writes_it,_and_the_scheme's_SKOS,_relative_to_the_namespace
  Scenario: a term page is linked only when this run writes it
    Given a run that writes one term's page
    When the namespace files are computed
    Then that term links its page, another term links none, and the scheme links its SKOS

  @test:scripts/glossary-namespace-files.test.ts::namespaceFiles::with_--instance,_only_that_layer's_document
  Scenario: with --instance, only that layer's document
    Given a site holding both layers and --instance naming one
    When the namespace files are computed
    Then only that layer's document is written

  @test:scripts/glossary-namespace-files.test.ts::namespaceFiles::adds_the_concepts_to_the_layer's_vocabulary_when_the_tools_build_one
  Scenario: the concepts are added to the tools' vocabulary
    Given a vocabulary the tools build for the layer
    When the namespace files are computed
    Then the page anchors both the vocabulary's entries and the concepts
