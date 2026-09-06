<h1 align="center">Principia LuaScript API Cheatsheet</h1>

<p align="center"><img width="640" height="360" alt="cover" src="https://github.com/user-attachments/assets/d15cf642-febc-4d77-94fa-003457766f48" /></p>

This is a reference overview of the Principia LuaScript API in the form of a printable cheatsheet document. It contains lists of all methods and their arguments along with some other notes. Useful to have printed out on your desk or similar when doing Principia Lua scripting.

The cheatsheet is in A4 format. Two PDFs are available, one colour version and one black-and-white version that is optimised for printing with greyscale printers.

It currently documents the API as it exists in Principia 2024.07.12. Information has been sourced from the API reference on the Principia Wiki as well as the game's source code, it has been checked for correctness but mistakes may still happen. Updates to the sheet can be made if issues with it are discovered, please let me know if you find any.

For more information about LuaScript see the full reference documentation on the [Principia Wiki](https://principia-web.se/wiki/LuaScript).

## Download
See [Releases](https://github.com/principia-game/luascript-cheatsheet/releases) for PDF downloads for the latest revision.

## Building from source
The cheatsheet is made with HTML+CSS and rendered with Weasyprint to a PDF file. There are two versions - the canonical colour version and the greyscale version. The greyscale version uses different CSS and images and is regenerated when the `render.sh` script is ran.

The resulting PDFs are output to the `out/` directory and the `render.sh` script will also attempt to preview the PDFs with Okular.
