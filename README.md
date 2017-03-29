Java 9 modules - reducing coupling of modules
======

It's the example of reducing coupling of Java 9 modules.
The repo contains four modules 

- `pl.tfij.java9modules.greetings.api` - module with API.
- `pl.tfij.java9modules.app` - client consuming the API.
- `pl.tfij.java9modules.greetings.standard` - first implementation of API.
- `pl.tfij.java9modules.greetings.conversational` - second implementation of API.

To keep code simple, each module contains only one class with a one single-line method.

Included scripts allow to easily run the code.
To compile the code just start a `compile.sh` script.
Then execute the `package.sh` to build jar files. 
This script provides jar files to three dirs: `mod`, `mods-conversational-greetings`, `mods-standart-greetings`.

For each dir separate *runs script* is prepared:
- `./run-standart-greetings.sh` runs the program with `pl.tfij.java9modules.greetings.standard` implementation of API at module path and print `Hello, World!`.
- `./run-conversational-greetings.sh` runs the program with `pl.tfij.java9modules.greetings.conversational` implementation of API at module path and print `Hi, World!`.
- `./run.sh` run the program with both implementations of API at module path. The output is not deterministic, it can be `Hello, World!` or `Hi, World!`.
