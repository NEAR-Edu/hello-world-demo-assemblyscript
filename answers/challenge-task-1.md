# Task #1

In `src/assembly/index.ts`

```ts
export function helloWorld(): string {
  return 'hello world';
}
```

Change to:

```ts
export function helloWorld(name: string): string {
  return `hello ${name}`;
}
```

Build, deploy, and view the contract.

Expected output:

```
hello <your name>
```
