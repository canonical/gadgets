use lib_flutter_rust_bridge_codegen::{
    config_parse, frb_codegen, get_symbols_if_no_duplicates, RawOpts,
};

const RUST_INPUT: &str = "src/detarball.rs";
const RUST_OUTPUT: &str = "src/detarball_bridge_generated.rs";
const C_OUTPUT: &str = "../include/detarball_bridge_generated.h";
const DART_OUTPUT: &str = "../dart/lib/detarball_bridge_generated.dart";

fn main() {
    // Tell Cargo that if the input Rust code changes, to rerun this build script.
    println!("cargo:rerun-if-changed={}", RUST_INPUT);
    // Options for frb_codegen
    let raw_opts = RawOpts {
        rust_input: vec![RUST_INPUT.to_string()],
        rust_output: Some(vec![RUST_OUTPUT.to_string()]),
        dart_output: vec![DART_OUTPUT.to_string()],
        c_output: Some(vec![C_OUTPUT.to_string()]),
        ..Default::default()
    };
    // get opts from raw opts
    let configs = config_parse(raw_opts);

    // generation of rust api for ffi
    let all_symbols = get_symbols_if_no_duplicates(&configs).unwrap();
    for config in configs.iter() {
        frb_codegen(config, &all_symbols).unwrap();
    }
}
