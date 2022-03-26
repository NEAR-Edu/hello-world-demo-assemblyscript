# hello-world-demo-assemblyscript

This repository includes a complete project structure for AssemblyScript contracts targeting the NEAR platform.

The example here is very basic. It's a simple contract demonstrating the following concepts:

- a single contract
- the difference between `view` vs. `change` methods
- basic contract storage

## Usage

### Getting started

INSTALL `NEAR CLI` first like this: `npm i -g near-cli`

1. clone this repo to a local folder
2. run `yarn`
3. run `./scripts/1.dev-deploy.sh`
4. run `./scripts/2.use-contract.sh`
5. run `./scripts/2.use-contract.sh` (yes, run it to see changes)
6. run `./scripts/3.cleanup.sh`

### Other documentation

- See `./scripts/README.md` for documentation about the scripts
- See the original repo at https://github.com/Learn-NEAR/starter--near-sdk-as
- https://docs.near.org/docs/develop/contracts/as/intro

## The file system

```sh
├── README.md                      # this file
├── as-pect.config.js              # configuration for as-pect (AssemblyScript unit testing)
├── asconfig.json                  # configuration for AssemblyScript compiler (supports multiple contracts)
├── package.json                   # NodeJS project manifest
├── scripts
│   ├── 1.dev-deploy.sh            # helper: build and deploy contracts
│   ├── 2.use-contract.sh          # helper: call methods on ContractPromise
│   ├── 3.cleanup.sh               # helper: delete build and deploy artifacts
│   └── README.md                  # documentation for helper scripts
├── src
│   ├── as_types.d.ts              # AssemblyScript headers for type hints
│   │   __tests__
│   │   ├── as-pect.d.ts           # as-pect unit testing headers for type hints
│   │   └── index.unit.spec.ts     # unit tests for contract 1
│   │   asconfig.json              # configuration for AssemblyScript compiler (one per contract)
│   │   └── assembly
│   │       └── index.ts           # contract code for contract 2
│   ├── tsconfig.json              # Typescript configuration
│   └── utils.ts                   # common contract utility functions
└── yarn.lock                      # project manifest version lock
```

You may clone this repo to get started OR create everything from scratch.

Please note that in order to create the AssemblyScript and tests folder structure, you may use the command `npx asp --init` which will create the following folders and files (see https://tenner-joshua.gitbook.io/as-pect/getting-started):

```
./assembly/
./assembly/tests/
./assembly/tests/example.spec.ts
./assembly/tests/as-pect.d.ts
```
