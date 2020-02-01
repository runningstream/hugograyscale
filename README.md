# Version 2 Major Changes

**Version 2 configuration is a major change from version 1.**  Sections on the main page are now configured via multiple markdown files in the content directory **instead of** via frontmatter with raw HTML in one file.

# Grayscale Theme for Hugo

This is a multi-section single page theme intended as a landing page.  This is derived from the startbootstrap-grayscale theme.

Preview at https://runningstream.github.io/hugograyscale/

## Usage

Drop it in your site's themes folder, then modify your site config file to specify the theme `grayscale`, or use the `-t grayscale` command line switch.

## Configuration and Content

### Description

The Hugo Grayscale theme is a one page theme designed to be the front page to your site.  Its content is in sections with visual breaks between each.  The content is contained in markdown files in the `content/sections` directory, ordered by their `weight` parameter.  The `exampleSite` directory is a good place to start.  The page is designed to consist of, in order:

* a navbar at top linking to the other sections, and other arbitrary links
* an intro section presenting a header title and into text with background image
* an about section presenting a header and text with black background
* a download section presenting header and text with background image
* a contact section presenting header and text with black background
 
These section names correspond to the `title` front matter parameter, and the files are ordered by their `weight` front matter parameter.  The section names show up as the links in the navbar.

Because this theme generates only one page, the RSS feed contains no items.  The sitemap will only contain the home page.

### Site Configuration

Site configuration can include an author and social section, like the following:

```
[Author]
    name = "Site Creator Name"
    email = "Site Creator Email"
[Social]
    twitter = "site_twitter_handle"
```

These settings will enable proper display in the meta tags.

### Content Directory Layout

```
.
...
├── content
|   ├── _index.md
|   └── sections
|       ├── index.md
|       ├── section_data_1.md
|       ├── section_data_2.md
|       ├── section_data_3.md
...
```

`content/_index.md` specifies front matter for the page.  `content/sections/` contains all the sections that are displayed on the page. `content/sections/index.md` should contain front matter specifying that the directory is `headless`.  Other `content/sections/*.md` files can be named anything, and comprise the section content.

### Front Matter

The page's overall title, date, copyright and additional navbar links are specified in `content/_index.md`.  Like so:

```
---
title: "Hugo Grayscale Theme"
date: 2018-09-09T00:00:00-00:00
copyright: "Your Website"
description: "A port of the Grayscale theme to Hugo"

menu:
    - {url: "https://startbootstrap.com/themes/grayscale/", name: "Original"}
---
```

The `content/sections/index.md` front matter should specify that the directory is headless.  Note that the filename has no underscore this time...

```
---
headless: true
---
```

Section frontmatter (files like `content/sections/*.md` other than `index.md`) should specify a `title` and `weight`, and can specify `improvecontrast`.

```
---
title: "About"
weight: 2
improvecontrast: true
---
```

The `title` property is used for link text, and `weight` determines section ordering.  Specifying `improvecontrast: true` places a contrast-improving transparent box behind your text.  This is most appropriate on even-numbered sections because they have background images.

### Images

The background images are selected by filename and placed in the "static/img/" directory for your site.

* The intro section, section 0, must have its image at `static/img/section0-bg.jpg`
* The download section, section 2, must have its image at `static/img/section2-bg.jpg`

These filenames are configured in `grayscale.css`.

Image aspect ratios used by the theme's default images are:

* 1.33333 for `section0-bg.jpg` - 1500x1125, for example
* 4.625 for `section2-bg.jpg` - 1500x324, for example

### Shortcodes

Shortcodes exist to support the "big buttons", including the demo site's download page button and social network buttons.

Big button shortcode example:

```
{{< big-button text="Visit Download Page" href="https://github.com/runningstream/hugograyscale/" >}}
```

Social network shortcode example:

```
{{< socialhandles >}}
    {{< twitter user="stream_running" >}}
    {{< github user="runningstream" >}}
{{< /socialhandles >}}
```

Check out the directory `exampleSite/content/` for a full-featured example.
