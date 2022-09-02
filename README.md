# troffm

An Awk script that outputs a rule suitable for make describing the files
included with `.so` request.
It works in a similar fashion to `-M` switch in C compilers.

This program is pretty much useless because you usually just list roff
files in a Makefile or use Make's "wildcard" function.
But I thought it would be interesting to make this small program anyway :P

## Dependencies

* [Gawk](https://www.gnu.org/software/gawk)

## Installation

### Manual

```sh
git clone https://github.com/NikitaIvanovV/troffm
cd troffm
sudo make install
```

Uninstall with `sudo make uninstall`

## Usage

Example with Groff and GNU Make:

```make
doc.pdf: file.ms
    troffm $@ $< > file.d
    groff -ms -Tpdf $< > $@

-include file.d
```

Also, see [example](example) directory.
