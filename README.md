# Language Server for the Janet Programming Language

Contains the Language Server itself and the associated VSCode Extension.

## Supported Features

- Partial code-completion via discovered bindings
- Partial on-hover documentation for currently bound bindings
- Compiler / parsing errors for each open document

## TODO

- Packaging
- Remove hard-coded paths
- Figure out the linker arguments on Windows for dynamically loading Janet
  libraries during the runtime of the server binary.

## Development Guide

- Replace hard-coded paths to match your system.
- Build the server. See `server-janet/README.md`.
- Run the VSCode "Launch Client" debug action.
