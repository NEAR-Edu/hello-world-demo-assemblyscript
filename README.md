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

# The Challenge

You should try completing the following 3 tasks one at a time. The answer is available for each, but don't look at them until you've tried your best. All 3 probably will only take you 15 minutes.

## Basic overview of the 3 tasks (which will be detailed in the following sections)

1. Change `helloWorld` method so it accepts parameter `name` and greets that person instead.
1. Change `helloWorld` method so it accepts parameter array `names` and greets each of those people.
1. Change `helloWorld` method so it reads the Account ID from Context and greets the account who called the function.

## Task 1 success criteria

- input:

```bash
near view $CONTRACT helloWorld '{"name": "Your Name"}'
```

- incorrect input (don't do it like this, which throws an error):

```bash
near view $CONTRACT helloWorld 'Your Name'
```

- output: `hello Your Name`

Ready to see Task 1 answer? [Check here](answers/challenge-task-1.md)

## Task 2 success criteria

- input:

```bash
near view $CONTRACT helloWorld '{"names": ["Your Name", "Friend Name"]}'
```

- incorrect input (don't do it like this, which throws an error):

```bash
near view $CONTRACT helloWorld "['Your Name', 'Friend Name']"
```

- output:

```
hello Your Name
hello Friend Name
```

**Bonus**
Try instead providing thousands of names in the array. Check the error, and learn why it has failed.

Ready to see Task 2 answer? [Check here](answers/challenge-task-2.md)

## Task 3 success criteria

- input: `near call $CONTRACT helloWorld --accountId <id>.testnet`
- output: `hello <id>.testnet`

Ready to see Task 3 answer? [Check here](answers/challenge-task-3.md)

# Other documentation

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

## Other thoughts

You may want to consider using the command `npx asp --init`, which will create the following folders and files (see https://tenner-joshua.gitbook.io/as-pect/getting-started):

```
./assembly/
./assembly/tests/
./assembly/tests/example.spec.ts
./assembly/tests/as-pect.d.ts
```
