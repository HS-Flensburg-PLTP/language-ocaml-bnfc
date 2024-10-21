# 2 "dir/file.ml"

(* Example programs that caused problems in earlier versions of the grammar *)

let test = !into.sub_results_rev <- from

let test = test @@ fun in_pipe -> 3

let test = if nread > 0 then 3

let test = f (fun x -> x)

let test = f (if bool then 1 else 3)

let test = if bool then let x = 3 in x else 3

let test = 42, if bool then 1 else 2, 3

let test = 42, if bool then 1 else (2, 3)

let test = 42, if bool then 1 else 2

let test = ( 42, if bool then 1 else 2 )

let test = ( 42, if bool then 1 else 2, 4 )

let test = f |> if bool then 1 else 2

let test = (f x).y.z

let test = x.y.x

let test =
  while bool do
    action
  done

let test = 1.0 -. 2.0

let test = 2 +. 3

let () = (Js.string {| |})

let test = "this is a \
            test string"

let test = ["\\"; "a"]

let test = this#method1#method2

let ( / ) a b = f a b

module type Test = sig
  module type S = S
end

let ( let<*!> ) x f = 1

let ( mod ) f1 f2 = 1

let test = method1##arg

let ( += ) x y = 1

let test = x += y

let test = 1;;

let test = 1

let test = "\u{00a0}"

let test x =
  match x with
  | y when y != !z -> z

let test = List.filter ((!=) x) list

let (!!!!) x y = 1
