#!/bin/bash
# ==========================================================
# phpBB Language Diff Automation Script
# Author: Vinny
# Description:
#   1. Generate diff between phpBB 3.3.15 and 4.0.0-a1 language files
#   2. Convert diff to HTML using diff2html
#   3. Open the HTML report in the default browser
# ==========================================================

echo "[1/3] Generating diff file..."
diff -ruN ../phpbb-3.3.15/language ../phpbb-4.0.0-a1/language > lang_diff.txt

if [ ! -f "lang_diff.txt" ]; then
    echo "ERROR: Failed to generate lang_diff.txt"
    exit 1
fi

echo "[2/3] Creating HTML diff report..."
diff2html -i file -F diff.html -s side --highlightCode -- lang_diff.txt

if [ ! -f "diff.html" ]; then
    echo "ERROR: Failed to create diff.html"
    exit 1
fi

echo "[3/3] Opening diff report in browser..."
if command -v xdg-open > /dev/null; then
    xdg-open diff.html
elif command -v open > /dev/null; then
    open diff.html
else
    echo "HTML file generated: diff.html (open manually)"
fi

echo "Done!"
