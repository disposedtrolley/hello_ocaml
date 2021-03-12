let average a b =
  let sum = a +. b in
  sum /. 2.0;;

let () = print_float (average 10.0 20.5)
