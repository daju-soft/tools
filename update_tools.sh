#!/bin/bash

TOOLS=(
  "json-formatter/index.html"
  "word-counter/index.html"
  "uuid-generator/index.html"
  "base64-encoder/index.html"
  "regex-tester/index.html"
  "jwt-decoder/index.html"
  "timestamp-converter/index.html"
  "url-encoder/index.html"
  "css-minifier/index.html"
  "color-converter/index.html"
)

NEW_HEAD='  <link rel="stylesheet" href="../style.css" />'

NEW_HEADER='<header>
  <a href="/tools/" class="logo">
    <div class="logo-icon">⚡</div>
    <span class="logo-text">DevToolbox</span>
  </a>
  <div class="header-right">Free tools for developers</div>
</header>'

for FILE in "${TOOLS[@]}"; do
  echo "Processing $FILE..."

  # Remove everything between <style> and </style> including the tags
  perl -0777 -i -pe 's/<style>.*?<\/style>//gs' "$FILE"

  # Remove old link tags if any
  perl -0777 -i -pe 's/<link[^>]+stylesheet[^>]+>//g' "$FILE"

  # Insert shared CSS link after <meta name="viewport".../>
  perl -0777 -i -pe 's|(<meta name="viewport"[^>]+/>)|\1\n'"$NEW_HEAD"'|' "$FILE"

  # Replace old header block
  perl -0777 -i -pe 's|<header>.*?</header>|'"$NEW_HEADER"'|gs' "$FILE"

  echo "Done: $FILE"
done

echo ""
echo "All tool pages updated."
