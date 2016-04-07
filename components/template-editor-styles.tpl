{% comment %}
================================================================================
TEMPLATE DESIGN EDITOR STYLES.
Adds template design editor style overrides.
================================================================================
{% endcomment %}
<style data-voog-style>
:root {
  	/* VoogStyle
       "path": ["Main Styles"],
       "title": "Site background",
       "editor": "colorPicker",
       "scope": "global",
       "boundVariables": [
        "--header-background-color",
        "--footer-background-color"
      ]
    */
  --global-background-color: #f4f4f4;
  	/* VoogStyle
       "path": ["Main Styles"],
       "title": "Font family",
       "editor": "listPicker",
       "list": {% include "template-fonts" %},
       "featured": true,
       "scope": "global"
    */
  --font-main: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Main Styles"],
     "title": "Primary color",
     "editor": "colorPicker",
     "scope": "global"
  */
  --second-color: black;
  /* VoogStyle
     "path": ["Main Styles"],
     "title": "Secondary color",
     "editor": "colorPicker",
     "scope": "global"
  */
  --main-color: #333;
  /* VoogStyle
     "path": ["Main Styles"],
     "title": "Third color",
     "editor": "colorPicker",
     "scope": "global"
  */
  --third-color: #818181;
  /* VoogStyle
     "path": ["Main Styles"],
     "title": "Fourth color",
     "editor": "colorPicker",
     "scope": "global",
     "boundVariables": [
      "--blog-list-headings-color"
    ]
  */
  --fourth-color: white;
  /* VoogStyle
     "path": ["Header"],
     "title": "Header background",
     "editor": "colorPicker",
     "scope": "global"
  */
  --header-background-color: #f4f4f4;
  /* VoogStyle
     "path": ["Header"],
     "title": "Padding",
     "editor": "rangePicker",
     "min": 10,
     "max": 100,
     "unit": "px",
     "scope": "global"
  */
  --global-padding-lr: 50px;
  /* VoogStyle
     "path": ["Header"],
     "title": "Height",
     "editor": "rangePicker",
     "min": 10,
     "max": 100,
     "step": 1,
     "unit": "px",
     "scope": "global"
  */
  --global-paddinog-lr: 50px;
  /* VoogStyle
     "path": ["Header", "Site title"],
     "title": "Color",
     "type": "Button"
     "editor": "colorPicker",
     "scope": "global",
     "featured": true
  */
  --roiwqeoriero: #fff;
  /* VoogStyle
     "path": ["Header", "Site title"],
     "title": "Color",
     "editor": "colorPicker",
     "scope": "global"
  */
  --roiwqpoeoriero: #fff;
  /* VoogStyle
     "path": ["Header"],
     "title": "Main menu links",
     "editor": "colorPicker",
     "scope": "global"
  */
  --roiwo9u9uqeoriero: #fff;
  /* VoogStyle
     "path": ["Blog list"],
     "title": "Width",
     "editor": "rangePicker",
     "min": 200,
     "max": 600,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-article-width: 300px;
  /* VoogStyle
     "path": ["Blog list"],
     "title": "Bottom / top",
     "editor": "toggleIcon",
     "states": {
        "on": "unset",
        "off": "50px"
        },
      "icon": "plus-large",
     "scope": "global"
  */
  --topbottom: 66;
  /* VoogStyle
     "path": ["Blog list"],
     "title": "Area alignment",
     "editor": "listPicker",
     "list": [
      {"title": "Left", "value": "left"},
      {"title": "Center", "value": "center"},
      {"title": "Right", "value": "right"}
     ],
     "scope": "global"
  */
  --blog-list-alignment: left;
  /* VoogStyle
     "path": ["Blog list"],
     "title": "Padding",
     "editor": "rangePicker",
     "min": 0,
     "max": 99,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-padding: 30px;
  /* VoogStyle
     "path": ["Blog list", "Headings"],
     "title": "Letter spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 20,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-headings-letter-spacing: 0;
  /* VoogStyle
     "path": ["Blog list", "Headings"],
     "title": "Line height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 2,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --blog-list-headings-line-height: 1.45em;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --blog-list-headings-font-size: 24px;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --blog-list-headings-font-weight: 600;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --blog-list-headings-font-style: normal;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --blog-list-headings-text-decoration: none;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --blog-list-headings-text-transform: none;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true,
    "boundVariables": [
      "--blog-list-date-color"
     ]
  */
  --blog-list-headings-color: white;
  /* VoogStyle
     "path": ["Blog list", "Text"],
     "title": "Character spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 20,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-date-letter-spacing: 0;
  /* VoogStyle
     "path": ["Blog list", "Text"],
     "title": "Padding top",
     "editor": "rangePicker",
     "min": 0,
     "max": 50,
     "step": 1,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-date-padding-top: 8px;
  /* VoogStyle
    "path": ["Blog list", "Text"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --blog-list-date-font-size: 12px;
  /* VoogStyle
    "path": ["Blog list", "Text"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --blog-list-date-font-weight: 400;
  /* VoogStyle
    "path": ["Blog list", "Text"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --blog-list-date-font-style: normal;
  /* VoogStyle
    "path": ["Blog list", "Text"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --blog-list-date-text-decoration: none;
  /* VoogStyle
    "path": ["Blog list", "Text"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --blog-list-date-text-transform: none;
  /* VoogStyle
    "path": ["Blog list", "Text"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --blog-list-date-color: white;
  /* VoogStyle
    "path": ["Content"],
    "title": "Max width",
    "editor": "rangePicker",
    "min": 400,
    "max": 999,
    "unit": "px",
    "scope": "global"
  */
  --main-width: 700px;
  /* VoogStyle
     "path": ["Footer"],
     "title": "Footer background",
     "editor": "colorPicker",
     "scope": "global"
  */
  --footer-background-color: #f4f4f4;
}

.main {
  background-color: var(--global-background-color);
}

.header,
.main-menu {
  background-color: var(--header-background-color);
}

.footer {
  background-color: var(--footer-background-color);
}

.header .header-inner,
.main-menu ul,
.sub-menu {
  padding-right: var(--global-padding-lr);
}

.site-title,
.sub-menu {
  padding-left: var(--global-padding-lr);
}

html,
body,
h1,
h2,
h3,
.custom-btn,
.lang-menu-btn,
.jq-select,
.form_field_textfield,
.form_field_textarea,
.form_submit input,
.submit,
input[type=submit],
input[type=text],
textarea,
.search-submit,
.lang-menu-btn,
.option-btn {
  font-family: var(--font-main);
}

body,
.header .main-menu-toggler,
.site-title {
  color: var(--main-color);
}

h1, h2, h3, .site-title, .site-title a, .main-menu ul a:hover, .main-menu ul a.active, .sub-menu a:hover, .sub-menu a.active,
.voog-search-modal-results h3, .voog-search-modal-results a {
  color: var(--second-color);
}

a, .option-btn, blockquote, .voog-search-modal-result, .main-menu ul a, .sub-menu a, .post-header .post-date, .post-cover .post-cover-inner .edy-img-drop-area-placeholder, .comment .comment-info {
  color: var(--third-color);
}

.wrap {
  max-width: var(--main-width);
}

.blog-list-page .main .article,
.blog-list-page .main .new-article {
  width: var(--blog-list-article-width);
}
.blog-list-page .main .article .article-content,
.blog-list-page .main .new-article .article-content {
  text-align: var(--blog-list-alignment);
  top: var(--topbottom);
  left: var(--blog-list-padding);
  right: var(--blog-list-padding);
}
.blog-list-page .main .article h2,
.blog-list-page .main .new-article h2 {
  color: var(--blog-list-headings-color);
  font-size: var(--blog-list-headings-font-size);
  font-style: var(--blog-list-headings-font-style);
  font-weight: var(--blog-list-headings-font-weight);
  letter-spacing: var(--blog-list-headings-letter-spacing);
  line-height: var(--blog-list-headings-line-height);
  text-decoration: var(--blog-list-headings-text-decoration);
  text-transform: var(--blog-list-headings-text-transform);
}
.blog-list-page .main .article .article-date,
.blog-list-page .main .new-article .article-date {
  color: var(--blog-list-date-color);
  font-size: var(--blog-list-date-font-size);
  font-style: var(--blog-list-date-font-style);
  font-weight: var(--blog-list-date-font-weight);
  letter-spacing: var(--blog-list-date-letter-spacing);
  padding-top: var(--blog-list-date-padding-top);
  text-decoration: var(--blog-list-date-text-decoration);
  text-transform: var(--blog-list-date-text-transform);
}

.form_submit input,
.submit,
.custom-button,
.custom-button:hover {
  color: var(--fourth-color);
}

.form_field_textfield,
.form_field_textarea {
  background-color: var(--fourth-color);
}

label .form_field_checkbox {
  background-color: var(--fourth-color);
}
</style>

{{ site.style_tag }}