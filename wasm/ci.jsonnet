local common = import 'ci_common/common.jsonnet';

{
  builds: [
    common.jdk8_gate_linux_eclipse_jdt + common.gate_graalwasm             + {environment+: {SUITE: 'wasm', GATE_TAGS: 'style,fullbuild'}}         + {name: 'gate-graalwasm-style-fullbuild-linux-amd64'},
    common.jdk8_gate_linux_wabt        + common.gate_graalwasm_jvmci       + {environment+: {SUITE: 'wasm', GATE_TAGS: 'build,wasmtest'}}          + {name: 'gate-graalwasm-unittest-linux-amd64'},
    common.jdk8_gate_linux_wabt_emsdk  + common.gate_graalwasm_emsdk_jvmci + {environment+: {SUITE: 'wasm', GATE_TAGS: 'buildall,wasmextratest'}}  + {name: 'gate-graalwasm-extra-unittest-linux-amd64'},
    common.jdk8_gate_linux_wabt_emsdk  + common.gate_graalwasm_emsdk_jvmci + {environment+: {SUITE: 'wasm', GATE_TAGS: 'buildall,wasmbenchtest'}}  + {name: 'gate-graalwasm-benchtest-linux-amd64'},
  ],
}
