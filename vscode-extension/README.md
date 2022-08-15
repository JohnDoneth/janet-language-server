# Janet VSCode Language Server Extension

## Running

```shell
npm install

npm run compile
```

Then run the VSCode "Launch Client" debug action, assuming you've already compiled and installed the server. See `language-server/README.md` first.

## Installing Locally

```
npx vsce package

code --install-extension janet-language-server-0.0.1.vsix
```