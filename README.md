# helloworld

Some OCaml shenanigans.

## Building

- `dune build helloworld.exe` produces a native executable.
- `dune build helloworld.bc` produces bytecode output which can be debugged
with `ocamldebug _build/default/helloworld.bc`.
- `dune build` will do both of the above.

## Running

- `./_build/default/helloworld.exe`

## Debugging

As described in this [issue](https://github.com/ocaml/dune/issues/4347), Dune
performs name mangling on modules to avoid name collisions in the OCaml
toplevel. The consequence on debugging is that module names are prefixed by Dune
during compilation, and the prefix must be included in the module name when
setting breakpoints.

For example, `helloworld.ml` defines the module `Helloworld` in the toplevel,
which Dune mangles into `dune__exe__Helloworld`.

- `ocamldebug _build/default/helloworld.bc` starts a debugging session.
- Set a breakpoint using `break @dune__exe__<module> <line>`, i.e. `break @dune__exe__Helloworld 2`.
- Run the program using `r`.
- Go to a specific time using `g <time>`, i.e. `g 0` restarts the program.
