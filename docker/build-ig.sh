#!/bin/sh
# Build the current IG with the HL7 IG Publisher, mirroring the approach used by
# WorldHealthOrganization/smart-base .github/workflows/ghbuild.yml:
#   - run inside hl7fhir/ig-publisher-base
#   - download publisher.jar into ./input-cache
#   - java -Xmx6g -jar publisher.jar publisher -ig . -package-cache-folder ...
# Produces ./output/package.tgz
set -eu

cd /work

# Avoid git "dubious ownership" warnings on the bind-mounted workspace.
git config --global --add safe.directory /work 2>/dev/null || true

mkdir -p input-cache fhir-package-cache

# The IG Publisher shells out to `sushi` to compile FSH input, but the base
# image doesn't bundle it (the smart-base workflow installs it at build time).
if ! command -v sushi >/dev/null 2>&1; then
  echo ">> Installing SUSHI ..."
  npm install -g fsh-sushi
fi

# The publisher/WHO template also shells out to `python3` for some content
# steps; the base image doesn't bundle Python either.
if ! command -v python3 >/dev/null 2>&1; then
  echo ">> Installing python3 ..."
  apt-get update -qq && apt-get install -y -qq --no-install-recommends python3
fi

PUBLISHER_JAR=input-cache/publisher.jar
if [ ! -f "$PUBLISHER_JAR" ]; then
  echo ">> Downloading IG Publisher ..."
  curl -fSL -o "$PUBLISHER_JAR" \
    https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
fi

echo ">> Building IG ..."
java -Xmx6g -jar "$PUBLISHER_JAR" publisher \
  -ig . \
  -package-cache-folder ./fhir-package-cache

if [ ! -f output/package.tgz ]; then
  echo "!! Build finished but output/package.tgz was not produced" >&2
  exit 1
fi

echo ">> Build OK -> output/package.tgz"
