## Bevy Codespace

An example bevy project that runs in GitHub codespaces.

This repo assumes you're building something that can run in a wasm environment as GitHub codespaces do not have GPUs and you do not have remote desktop access to a codespace.

## Development

Compiling for the `wasm32-unknown-unknown` target will cause the port to be accessible via `wasm-server-runner`. Run this in a Terminal tab and restart it when you want to view changes.

```
cargo run --target wasm32-unknown-unknown
```

At this time the page is supposed to refresh if the `wasm-server-runner` process is restarted. There is no other hot-reloading including no support for Bevy's built-in file-watcher feature.

## Sharing

You can share access to an in-development Bevy app by making the forwarded port `public` in the ports tab.

The URL can then be given to anyone to test out your game as you make changes.

## Additional Notes

The development experience of building an app in codespaces is generally worse than local development. Keypresses are slower (due to the network), file watching doesn't work as well, native gpu support doesn't exist, etc.

In my opinion: if you can develop locally, you should, even if you're targetting wasm.

That said, this is a working development environment that can be a suitable replacement when the developer does not have control over their computer, such as computers that are controlled by a school system or are otherwise "locked down" in ways that make it awkward to install or run programs.

> [!CAUTION]
> The less resources you use to power the codespace, the longer compile times take in general. It works with the minimum cores available, but you will take awhile.

## Random Notes

---

```sh
apt-get update
apt-get upgrade
DEBIAN_FRONTEND=noninteractive apt-get install -yq g++ pkg-config libx11-dev libasound2-dev libudev-dev libxkbcommon-x11-0
cargo c
cargo b
```

---

```sh
cargo binstall wasm-server-runner
```

---

https://github.com/lee-orr/rusty-dev-containers/issues/29 ?