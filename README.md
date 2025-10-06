# phpBB Language Diff Viewer

This project generates an **HTML visual diff** between the language files of **phpBB 3.3.15** and **phpBB 4.0.0-a1**. It allows you to easily see what changed in the translations across these versions.

- - -

## 📂 Project Structure

 ├── phpbb-3.3.15/
 │    └── language/
 ├── phpbb-4.0.0-a1/
 │    └── language/
 ├── phpbb-lang-diff/
 │    └──  generate\_lang\_diff.sh

## ⚙️ Prerequisites

*   Linux or macOS (or Windows with Git Bash / WSL)
*   bash shell
*   **diff2html-cli** installed globally:
    
    ```
    npm install -g diff2html-cli
    ```
    

- - -

## 🚀 Usage

1.  Make sure the script is executable:
    
    ```
    chmod +x generate_lang_diff.sh
    ```
    
2.  Run the script from inside the `phpbb-lang-diff/` folder:
    
    ```
    ./generate_lang_diff.sh
    ```
    
3.  The script will perform three steps:
    1.  Generate a unified diff of the language folders (`lang_diff.txt`)
    2.  Convert the diff into an HTML report (`diff.html`)
    3.  Open the HTML report in your default browser (if possible)
4.  Open `diff.html` manually if the browser does not open automatically.

- - -

## 📝 Notes

*   Make sure the **language folders** are in the expected relative paths:
    
    ```
    ../phpbb-3.3.15/language
    ../phpbb-4.0.0-a1/language
    ```
    
*   The HTML diff is **interactive**, with side-by-side view and syntax highlighting.
*   You can regenerate the diff anytime by running the script again.

- - -

## 🔧 Troubleshooting

*   If you get `diff: No such file or directory`, check that the paths to the language folders are correct.
*   If `diff2html` is not found, install it globally using `npm install -g diff2html-cli`.
*   On Windows, use **Git Bash** or **WSL** to run the script correctly.

- - -

## 💡 Optional Improvements

*   Modify the script to automatically detect folder names if the version numbers or capitalization change.
*   Customize the HTML output style using diff2html options (`-s side` or `-s line`).