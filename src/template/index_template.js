// Base64 string decoder
const decode = (b64) => {
  const str = window.atob(b64);
  const array = new Uint8Array(str.length);
  for (let i = 0; i < str.length; i += 1) {
    array[i] = str.charCodeAt(i);
  }
  return array.buffer;
};

const memory = new WebAssembly.Memory({ initial: 256, maximum: 512 });

WebAssembly.instantiate(new Uint8Array(decode(document.getElementById('w').innerHTML)), { env: { memory } }).then(results => {
  const instance = results.instance;
  alert(instance.exports.whatNumber());
}).catch(console.error);