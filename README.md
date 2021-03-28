# Simple WebAssembly for Cloud9

Do you want to test out the simplest compiling of C code to WebAssembly on an AWS Cloud9 instance?

You do? Well what are the chances. That's exactly what this project is for!

- How about just a really simple bit of C code?
- Maybe it compiles down to a WASM file.
- Maybe that WASM file is then converted to a base64 string.
- Maybe that string is then directly embedded into a single HTML file that already contains embedded JS to run it.
- Maybe you can even download that single HTML file and run locally without issues.

You'll just have to see for yourself!

This project avoids using emscripten or other frameworks and compiles with straight up Clang. It'll even install it all for you on Cloud9. No worries.


## Installation

Log in to AWS and spin up a new Cloud9 environment.
I'd recommend selecting access via Systems manager and Amazon Linux 2. But who am I to tell you what to do.

Now open a new terminal window in Cloud9 and clone this repo using git clone:

```bash
git clone https://github.com/viralplatipuss/Simple-WebAssembly-Cloud9.git
```

Now right-click > "Run" on the **install.sh** file.

The script will download and setup Clang via the WasiSDK from WebAssembly.org
The SDK itself just uses git submodules to pull in Clang/LLVM. Don't even worry about it.

The install script will clean everything up, including itself. Leaving you with a ready to go project.

## What do I get?

A very basic project.

Right click and preview the index.html file found in /out

What's that? An alert with the number 17? Where did that come from?

I'll tell you where. It came from the C code found in src/index.c

Why 17? Who knows! Go on, change it, I dare you.

Now right-click **build.sh** and "Run".

Now preview out/index.html again. Did it change? Probably.

Now right-click on the index.html file and download it.

Open it locally. Still works. No async fetching nonsense requiring a local Node.js server for you!

Ok. You get it. But you want more...

Mess with the files in src/template and you could call even more functions from your C code.

Mess with build.sh and you can make it keep the wasm file, or compile C++ instead of C, maybe multiple files, idk, you're on your own now!
