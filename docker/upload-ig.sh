#!/bin/sh
# Wait for the smart-helper (HAPI) instance to be reachable, then install the
# built IG package using HAPI's runtime $install operation:
#
#   POST [base]/ImplementationGuide/$install
#   {
#     "resourceType": "Parameters",
#     "parameter": [
#       { "name": "npmContent", "valueBase64Binary": "<base64 of package.tgz>" }
#     ]
#   }
#
# (The stock HAPI JPA starter has no /upload_ig endpoint -- that was specific to
# a custom smart-helper build. $install is the documented runtime upload, gated
# by hapi.fhir.ig_runtime_upload_enabled=true on the server.)
set -eu

HELPER_BASE="${HELPER_BASE:-http://smart-helper:8080}"
PKG="${PKG:-/work/output/package.tgz}"
INSTALL_URL="$HELPER_BASE/fhir/ImplementationGuide/\$install"
READY_URL="$HELPER_BASE/fhir/metadata"

# alpine ships base64 (busybox) but not curl
command -v curl >/dev/null 2>&1 || apk add --no-cache curl >/dev/null

if [ ! -f "$PKG" ]; then
  echo "!! Package not found: $PKG" >&2
  exit 1
fi

echo ">> Waiting for smart-helper at $READY_URL ..."
until curl -sf "$READY_URL" >/dev/null 2>&1; do
  sleep 5
done
echo ">> smart-helper is up."

# Build the Parameters body. Stream the base64 straight into the file instead of
# through a shell variable -- a multi-MB package would exceed the shell's
# argument-size limit (ARG_MAX) if passed as a printf argument.
echo ">> Base64-encoding $PKG into \$install body ..."
{
  printf '{"resourceType":"Parameters","parameter":[{"name":"npmContent","valueBase64Binary":"'
  base64 "$PKG" | tr -d '\n'
  printf '"}]}'
} > /tmp/install.json

echo ">> POST $INSTALL_URL ..."
curl -fS -X POST "$INSTALL_URL" \
  -H 'Content-Type: application/fhir+json' \
  --data-binary @/tmp/install.json
echo
echo ">> Upload complete."
