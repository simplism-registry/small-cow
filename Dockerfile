FROM k33g/simplism:0.1.1
COPY small-cow.wasm .
EXPOSE 8080
CMD ["/simplism", "listen", "small-cow.wasm", "handle", "--http-port", "8080", "--log-level", "info"]
