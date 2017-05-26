
@ECHO OFF

echo platform=%1
echo arch=%2

cd node_modules\sqlite3 && npm run prepublish && node-gyp configure --module_name=node_sqlite3 --module_path=..\lib\binding\electron-v1.6-win32-x64 && node-gyp rebuild --target=1.6.10 --arch=ia32 --target_platform=win32 --dist-url=https://atom.io/download/atom-shell --module_name=node_sqlite3 --module_path=..\lib\binding\electron-v1.6-win32-x64

cd ..\..
