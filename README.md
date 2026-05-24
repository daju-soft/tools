# DevToolbox

Free online developer tools. No login, no ads, no tracking. Everything runs in the browser.

Live site: [daju-soft.github.io/tools](https://daju-soft.github.io/tools/)

---

## What this is

A collection of 30 browser-based tools for developers and technical users. JSON formatters, encoders, converters, generators, validators. The kind of tools you Google ten times a week and end up on some slow ad-covered site that barely works on mobile.

This is the cleaner version of that.

---

## Tools

### Data and Formatting
- JSON Formatter and Validator
- XML Formatter
- JSON to CSV Converter
- Base64 Encoder / Decoder
- URL Encoder / Decoder
- HTML Entity Encoder / Decoder

### Text Tools
- Word Counter
- Diff Checker
- Lorem Ipsum Generator
- Remove Duplicate Lines
- Text Case Converter
- String Length Counter
- Markdown to HTML Converter

### Developer Utilities
- Regex Tester
- JWT Decoder
- UUID Generator
- Unix Timestamp Converter
- Cron Expression Generator
- HTTP Status Codes Reference
- Number Base Converter (Binary, Decimal, Octal, Hex)

### Security and Crypto
- Password Generator
- Hash Generator (SHA-1, SHA-256, SHA-384, SHA-512)

### CSS and Color
- CSS Minifier
- CSS Beautifier
- Color Converter (HEX, RGB, HSL)

### Code Tools
- HTML Formatter
- JavaScript Minifier
- XML to JSON Converter
- YAML Validator

### Other
- QR Code Generator
- Robots.txt Generator

---

## How it works

Every tool is a single HTML file. No build system, no npm, no framework. Just HTML, CSS, and vanilla JavaScript.

The site is hosted on GitHub Pages for free. The shared stylesheet lives in `style.css` at the root and each tool references it with a relative path.

```
daju-soft.github.io/tools/
├── index.html
├── style.css
├── sitemap.xml
├── json-formatter/index.html
├── word-counter/index.html
├── regex-tester/index.html
└── ...
```

---

## Running locally

Clone the repo and open `index.html` in a browser. No server needed for most tools. The YAML validator loads a library from a CDN so you need internet access for that one.

```bash
git clone https://github.com/daju-soft/tools.git
cd tools
# open index.html in your browser
```

---

## Adding a new tool

1. Create a root-level folder with a short URL-friendly name
2. Create `index.html` inside it
3. Link the shared stylesheet: `<link rel="stylesheet" href="../style.css" />`
4. Use the standard header HTML for consistency
5. Add the tool card to `index.html` at the root
6. Add the URL to `sitemap.xml`

---

## Tech

- Pure HTML, CSS, JavaScript
- No frameworks, no build tools
- GitHub Pages for hosting
- Google Search Console for indexing
- One external CDN dependency for YAML parsing and QR code generation

---

## Status

30 tools live. Adding more weekly. Google Search Console verified and sitemap submitted.

---

## License

MIT