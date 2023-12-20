# Small Cow 🐮

## Build, Run, Release

- Build the wasm function:  run `./build.sh`
- Start the Simplism service: run `./start.sh`
- Call the service: 
  ```bash
  curl http://localhost:8080 \
  -d '👋 Hello World 🌍'

  # output:
  ^__^
  (oo)\_______
  (__)\       )\/\
      ||----w |
      ||     ||
  👋 Hello World 🌍
  ```
- Create a release:
  - Change the tag in `.release.env`
  - Run `./create-release.sh`

## Deploy

Once the release created, you can use this URL to download the wasm function: https://github.com/simplism-registry/small-cow/releases/download/v0.0.0/small-cow.wasm

If you installed Simplism, run the below command:
```bash
simplism listen small-cow.wasm handle \
--http-port 8080 \
--wasm-url https://github.com/simplism-registry/small-cow/releases/download/v0.0.0/small-cow.wasm
```

Otherwise, you can use Docker:
```bash
docker run \
-p 8080:8080 \
-v $(pwd):/app \
--rm k33g/simplism:0.0.7 \
/simplism listen ./app/small-cow.wasm handle \
--http-port 8080 \
--wasm-url https://github.com/simplism-registry/small-cow/releases/download/v0.0.0/small-cow.wasm
```
