#!/usr/bin/bash
tree-sitter generate
tree-sitter build-wasm
cp tree-sitter-dart.wasm ../tree-sitter-playground-svelte/public


