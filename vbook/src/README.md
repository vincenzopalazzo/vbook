<div align="center">
<p>
    <img width="80" src="https://raw.githubusercontent.com/vlang/v-logo/master/dist/v-logo.svg?sanitize=true">
</p>
</div>

V is a statically typed compiled programming language designed for building maintainable software.

It's similar to Go and its design has also been influenced by Oberon, Rust, Swift, Kotlin, and Python.

V is a very simple language. Going through this documentation will take you about an hour, and by the end of it you will have pretty much learned the entire language.

The language promotes writing simple and clear code with minimal abstraction.

Despite being simple, V gives the developer a lot of power. Anything you can do in other languages, you can do in V.

## Install from source
The major way to get the latest and greatest V, is to __install it from source__.
It is __easy__, and it usually takes __only a few seconds__.

### Linux, macOS, FreeBSD, etc:
You need `git`, and a C compiler like `tcc`, `gcc` or `clang`, and `make`:
```bash
git clone https://github.com/vlang/v
cd v
make
```
See [here](https://github.com/vlang/v/wiki/Installing-a-C-compiler-on-Linux-and-macOS)
for how to install the development tools.

### Windows:
You need `git`, and a C compiler like `tcc`, `gcc`, `clang` or `msvc`:
```bash
git clone https://github.com/vlang/v
cd v
make.bat -tcc
```
NB: You can also pass one of `-gcc`, `-msvc`, `-clang` to `make.bat` instead,
if you do prefer to use a different C compiler, but -tcc is small, fast, and
easy to install (V will download a prebuilt binary automatically).

For C compiler downloads and more info, see 
[here](https://github.com/vlang/v/wiki/Installing-a-C-compiler-on-Windows).

It is recommended to add this folder to the PATH of your environment variables.
This can be done with the command `v.exe symlink`.

NB: Some antivirus programs (like Symantec) are paranoid about executables with
1 letter names (like `v.exe`). One possible workaround in that situation is
copying `v.exe` to `vlang.exe` (so that the copy is newer), or whitelisting the
V folder in your antivirus program.

### Android
Running V graphical apps on Android is also possible via [vab](https://github.com/vlang/vab).

V Android dependencies: **V**, **Java JDK** >= 8, Android **SDK + NDK**.

  1. Install dependencies (see [vab](https://github.com/vlang/vab))
  2. Connect your Android device
  3. Run:
  ```bash
  git clone https://github.com/vlang/vab && cd vab && v vab.v
  ./vab --device auto run /path/to/v/examples/sokol/particles
  ```
For more details and troubleshooting, please visit the [vab GitHub repository](https://github.com/vlang/vab).