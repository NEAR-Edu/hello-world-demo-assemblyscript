# Task #2

In `src/assembly/index.ts`

```ts
export function helloWorld(name: string): string {
  return `hello ${name}`;
}
```

Change to:

```ts
export function helloWorld(names: Array<string>): string {
  return names.map<string>((name) => `hello ${name}`).join(', ');
}
```

Build, deploy, and run the contract.

Expected output:

```
hello Your Name, hello Friend Name
```

**Bonus**
If the operation is too complex (like passing thousands of names as the parameter), you will receive `GasLimitExceeded` error.
