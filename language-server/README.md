# Janet Language Server

Linux Build command:

```shell
jpm clean && jpm build --lflags=-export-dynamic
```

`export-dynamic` is required for the server to load arbitrary Janet native
modules when it evaluates user documents. Otherwise the symbols for Janet would
not be visible to the newly loaded modules and they would fail to load.
