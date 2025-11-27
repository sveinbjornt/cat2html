[![Build](https://github.com/sveinbjornt/cat2html/actions/workflows/build.yml/badge.svg)]()

# cat2html

## Translate output of (g)nroff to HTML

**In other words, make a nice HTML document from a UNIX man page.**

This is a modified version of `cat2html` originally written by Harald
Schlangmann for NeXTSTEP in 1993 and later extended by Carl Lindberg for the
[ManOpen](https://www.clindberg.org/projects/ManOpen.html) Mac app.

Minor modifications were made to make the code compile on modern macOS
systems for both x86_64 and arm64 architectures, but it should also build
and function just fine on other Unix-like systems that have `lex` or
`flex` installed.

### Building

#### macOS universal binary (arm64 and x86_64)

```bash
./build_macos.sh
```

The resulting binary will be created in the `macos_bin` folder.

#### Other Unix-like systems (Linux, BSD, etc.)

```bash
./build.sh
```

The resulting binary will be created in the `bin` folder.

### Pre-built binaries

A pre-built universal binary for macOS is available in the `dist` folder.

### Usage

```bash
Usage: cat2html [-il] [<filename>]
    Translate output of (g)nroff to HTML. If no
    <filename> is given, cat2html reads stdin.
    option -i uses italic characters for underlining.
    option -l adds 'manpage:' HREF links to other man pages.
    HTML output is sent to stdout.
```

#### How to convert a man page to HTML

```bash
/usr/bin/man -mandoc path/to/man_page.1 | ./cat2html > man_page.1.html
```

### Projects using cat2html

* [ManOpen](https://github.com/donmccaughey/ManOpen/) - A macOS GUI application for viewing man pages
* [ManDrake](https://github.com/sveinbjornt/mandrake) - A macOS GUI man page editor

... and many more command line tools that provide man pages viewable on the web.

## License

(c) 1993 by Harald Schlangmann.
Permission is granted to use this code.
