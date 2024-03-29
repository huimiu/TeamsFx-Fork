{
    "name": "{{SafeProjectNameLowerCase}}",
    "version": "1.0.0",
    "scripts": {
        "dev:teamsfx": "env-cmd --silent -f .localConfigs npm run dev",
        "dev": "nodemon --exec func start --typescript --language-worker=\"--inspect=9229\" --port \"7071\" --cors \"*\"",
        "build": "tsc",
        "watch:teamsfx": "tsc --watch",
        "watch": "tsc -w",
        "prestart": "npm run build",
        "start": "npx func start",
        "test": "echo \"Error: no test specified\" && exit 1",
        "keygen": "node -r ts-node/register ./src/keyGen.ts"
    },
    "dependencies": {
        "@azure/functions": "^1.2.2"
    },
    "devDependencies": {
        "env-cmd": "^10.1.0",
        "ts-node": "^10.4.0",
        "@types/node": "^20.8.10",
        "typescript": "^5.2.2",
        "nodemon": "^3.0.3"
    },
    "main": "dist/src/functions/*.js"
}
