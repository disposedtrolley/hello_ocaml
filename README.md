# helloworld

Some OCaml shenanigans.

## Building

- `dune build helloworld.exe` produces a native executable.
- `dune build helloworld.bc` produces bytecode output which can be debugged
with `ocamldebug _build/default/helloworld.bc`. **NB** this _should_ work but it
doesn't; `dune` doesn't seem to be compiling the bytecode output with debug
symbols, resulting in `Can't find any event there.` whenever a breakpoint is set
in `ocamldebug`).
- `dune build` will do both of the above.

## Running

- `./_build/default/helloworld.exe`

## Debugging

As a workaround for the dune issue, bytecode can be produced using the `ocamlc`
compiler if you need to debug.
- `ocamlc -g helloworld.ml` will produce `a.out`.
- `ocamldebug ./a.out` starts a debugging session.
- Set a breakpoint using `break @<module> <line>`, i.e. `break @helloworld 2`.
- Run the program using `r`.
- Go to a specific time using `g <time>`, i.e. `g 0` restarts the program.
