Seguir essas [guidelines](https://github.com/Microsoft/nodejs-guidelines/blob/master/windows-environment.md#compiling-native-addon-modules...this) para configurar o node no Windows


Seguir essas instruções dadas por JohnTendik [aqui](https://gist.github.com/maximilian-ruppert/9de273f72c1ba4aa62d6)
```bash
Here is what worked for me:

git clone the starter electron app
npm install --save electron-rebuild
npm install bluebird /* (required module for electron-rebuild that doesn't come packed for some reason) */
npm install --save sqlite3

cd node_modules/sqlite3
npm install nan
npm run prepublish && node-gyp configure --module_name=node_sqlite3 --module_path=../lib/binding/electron-v1.4-win32-x64 && node-gyp rebuild --target=1.4.13 --arch=x64 --target_platform=win32 --dist-url=https://atom.io/download/atom-shell --module_name=node_sqlite3 --module_path=../lib/binding/electron-v1.4-win32-x64

electron v1.4.13 currently, so change the target to your version. Also change the target platform & forlder names if you want to compile for mac or *nix

GL!
```
