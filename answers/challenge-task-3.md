# Task #3

In `src/assembly/index.ts`

```ts
export function helloWorld(names: Array<string>): string {
  return names.map<string>((name) => `hello ${name}`).join(', ');
}
```

Change to:

```ts
export function helloWorld(): string {
  const predecessor = Context.predecessor;
  return `hello ${predecessor}`;
}
```

Build, deploy, and run the contract.

Expected output:

```
hello <id>.testnet
```

# Congratulations!

**Now you are ready to build a real demo to submit so that we can accept you as a NEAR Certified Developer!**
