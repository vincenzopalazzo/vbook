## Running a project folder with several files

Suppose you have a folder with several .v files in it, where one of them
contains your `main()` function, and the other files have other helper
functions. They may be organized by topic, but still *not yet* structured
enough to be their own separate reusable modules, and you want to compile
them all into one program.

In other languages, you would have to use includes or a build system
to enumerate all files, compile them separately to object files,
then link them into one final executable.

In V however, you can compile and run the whole folder of .v files together,
using just `v run .`. Passing parameters also works, so you can
do: `v run . --yourparam some_other_stuff`

The above will first compile your files into a single program (named
after your folder/project), and then it will execute the program with
`--yourparam some_other_stuff` passed to it as CLI parameters.

Your program can then use the CLI parameters like this:
```v
import os

println(os.args)
```
NB: after a successful run, V will delete the generated executable.
If you want to keep it, use `v -keepc run .` instead, or just compile
manually with `v .` .

NB: any V compiler flags should be passed *before* the `run` command.
Everything after the source file/folder, will be passed to the program
as is - it will not be processed by V.