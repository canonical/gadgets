#!/bin/bash

pushd detarball/rust
wasm-pack build --target web
popd

cp -v detarball/rust/pkg/** web/pkg

