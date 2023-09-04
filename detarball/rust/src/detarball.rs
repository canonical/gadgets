// Copyright (C) 2022 Canonical Ltd
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

extern crate tar;

use lzma_rs;
use std::io::Read;
use tar::Archive;
use wasm_bindgen::prelude::wasm_bindgen;

#[wasm_bindgen]
pub fn decompress_from_xz_tarball(input: Vec<u8>, entry_suffix: String) -> String {
    let mut decomp: Vec<u8> = Vec::new();
    lzma_rs::xz_decompress(&mut input.as_slice(), &mut decomp).unwrap();

    let mut a = Archive::new(decomp.as_slice());

    let submission_file = a.entries().unwrap().find(|x| match x {
        Ok(t) => t.header().path().unwrap().ends_with(&entry_suffix),
        Err(_) => false,
    });

    let mut s = String::new();
    submission_file
        .unwrap()
        .unwrap()
        .read_to_string(&mut s)
        .unwrap();

    return s;
}

#[cfg(test)]
mod tests {
    use std::{
        fs::{self},
        io::Read,
    };

    use crate::detarball::decompress_from_xz_tarball;

    #[test]
    fn it_works() {
        let filename = "test/fixture/submission.tar.xz";
        let metadata = fs::metadata(&filename).expect("unable to read metadata");

        let mut f = std::io::BufReader::new(std::fs::File::open(filename).unwrap());

        let mut buffer = vec![0; metadata.len() as usize];
        let bytes_read = f.read(&mut buffer).unwrap();
        assert_eq!(bytes_read, 326192);

        let contents = decompress_from_xz_tarball(buffer, "submission.json".to_owned());
        assert_eq!(contents.len(), 579388);
    }
}
