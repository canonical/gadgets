# Gadgets

Gadgets is an application for inspecting your hardware configuration. It's a Dart / Flutter (+ Rust) based app that is primarily tested on Linux and on the web, though it also will run on macOS.

## Installation

Distributing via the Snap Store is in the works.

Meanwhile, you can build and install the app as a ([strictly confined](https://snapcraft.io/docs/snap-confinement)) snap already using [snapcraft](https://snapcraft.io/snapcraft):

```bash
snapcraft
sudo snap install gadgets_0.1.0_arm64.snap --dangerous

# These are needed once (going to request them to be auto-connected when this goes to Snap Store)
sudo snap connect gadgets:home :home
sudo snap connect gadgets:network-observe :network-observe
sudo snap connect gadgets:system-observe :system-observe
sudo snap connect gadgets:inxi-config :system-files
sudo snap connect gadgets:network-setup-observe :network-setup-observe
sudo snap connect gadgets:login-session-observe :login-session-observe
sudo snap connect gadgets:kernel-module-observe :kernel-module-observe
sudo snap connect gadgets:hardware-observe :hardware-observe
sudo snap connect gadgets:mount-observe :mount-observe
```

## Building for development

At least the following are required for local development:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) 3.0 or later.
- Stable version of `rustc`, `cargo`, `rustfmt` (Easiest acquired with [rustup](https://rustup.rs/)). Tested with 1.62, will probably work with older versions too if needed.
- LLVM 9 or later.
- [jq](https://stedolan.github.io/jq/).
- [inxi](https://github.com/smxi/inxi). On Ubuntu 22.04 the version bundled with the OS is new enough, on 18.04 it is not ([unit193/inxi](https://launchpad.net/~unit193/+archive/ubuntu/inxi) PPA is used in the Ubuntu Core 18.04 Snap based build as a way of installing it).

The application is built & run for local development as follows:

```bash
# Activate the Dart FFI generation tools (needed only once).
dart pub global activate ffigen

flutter run -d linux|chrome|macos
```

There are some tests in the `device-tree-lib` folder which are runnable from over there with `flutter test`.

For VS Code users, launch configurations exist for the application (`.vscode/launch.json`).

## License

Gadgets is licensed under the GPL 3.0 license. See LICENSE for more info.

## TODO

Mind dump of some directions of investigation:

- [x] Icons for nodes in the tree
- [x] Prototype typed nodes: devices / peripherals / system / kernel / ...
- [ ] Thorough list of prerequisites for building the app locally
- [ ] Make some nodes read-only (don't allow deleting them)
- [ ] Create additional nodes
- [ ] Create comments
- [ ] Checkbox integration
- [ ] Roadmap
- [ ] lshw?
- [ ] Investigate pulling checkbox providers in via a mechanism similar to https://git.launchpad.net/checkbox/tree/snap/snapcraft.yaml?h=series_uc22#n12
- [ ] Error handling for inxi report reading
- [ ] Drag and drop of inxi reports
- [ ] Drag and drop
