# cool-stdlib
A standard library for Cool Programming Language

## Brief intro
This repo contains some useful Cool libraries for cool programming. It is like the standards libraries in other programming language. Just like library functions provided in `stdio.h` and `stdlib.h` for C, `math` and `sys` as modules for Python, or `Data.Char` and `Control.Monad` modules for Haskell, the Cool classes and methods in this project is based on the language itself and provide convenience for programmers. I'll also call the library files as modules.

## Document structure
All the Cool library source files are in `src` directory. Their jobs are described as following:
| File   | Description                                                  |
| ------ | ------------------------------------------------------------ |
| Std.cl | The standard module, providing methods to regulate the references to every other *static* modules in the project. |

In `bin` and `lib` there are executables and a reference file for the spim MIPS simulator. The executables are all under x86 Linux. `concat` concatinates Cool source files (it can also concatinate any other files); `coolc` is a Cool compiler provided by our compiler course, `spim` is a MIPS vitual machine still available under Linux distributions.

For the case any of these executables can't work on your machine:
- Spim: It has releases for many common platforms. Visit [http://spimsimulator.sourceforge.net/](http://spimsimulator.sourceforge.net/).
- Others: You may need to get an Ubuntu on your machine, or implement your own Cool compiler and concatination program. If you have patience to wait, you may get a Cool compiler from my other repo (which just does not exist right now). `concat` on the other hand is very eazy to implement. If you are too lazy to do this try this little Python implement:
```Python
def main():
    from sys import argv
    if len(argv) > 1:
        catfiles = argv[1: -1]
        outfile = argv[-1]
        s = ''
        for file in catfiles:
            with open(file, 'r') as f:
                s += ''.join(s.readlines())
        with open(outfile, 'w') as f:
            print(s, file='f', end='')
    else:
        print("fatal error: no input file")

if __name__ == '__main__':
    main()

```

## How to use
Clone this project, write your own code and Makefile to concatenate all stdlib files, compile them and run. A typical process is as following:

Concatinate Cool sources:

`$ ./bin/concat <all stdlib files> <your files> out.cl`

Compile the concatinated file to generate MIPS assembly code:

`$ ./bin/coolc out.cl`

Use spim to run the MIPS assembly:

`$ ./bin/spim -trap_file ./lib/trap.handler -file out.s`

You can of course write a Makefile to do all of these. Templates are provided in my project.

## Want to contribute?
I'll write markdowns for issues and pull requests later.

### Have fun
