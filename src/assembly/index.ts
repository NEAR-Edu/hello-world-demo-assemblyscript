// eslint-disable-next-line import/no-unresolved
import { storage, Context } from 'near-sdk-as';

// ----------------------------------------------------------------------------
// Simply returns the string 'hello world' (until you edit this function as instructed in the challenge)
export function helloWorld(): string {
  return 'hello world';
}
// ----------------------------------------------------------------------------

// private helper method used by read() and write() below
function storageReport(): string {
  return `storage [ ${Context.storageUsage} bytes ]`;
}

// read the given key from account (contract) storage
export function read(key: string): string {
  if (storage.hasKey(key)) {
    return `✅ Key [ ${key} ] has value [ ${storage.getString(key)!} ]`;
  } else {
    return `🚫 Key [ ${key} ] not found in storage. ( ${storageReport()} )`;
  }
}

// write the given value at the given key to account (contract) storage
export function write(key: string, value: string): string {
  storage.set(key, value);
  return `✅ Data saved. ( ${storageReport()} )`;
}
