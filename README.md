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
