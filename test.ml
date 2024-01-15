
let x = 3

(*
let rec x t =
  match t with
  | { test = Constr ({ test = 3; loc }, _); _ } ->
      { t with
        test =
          Constr ({ test = 3; loc });
      }
  | _ -> t
*)
(*
let rec do_ctor t =
  match t with
  | { ppat_desc = Ppat_construct ({ txt = Lident x; loc }, _); _ } ->
      {
        t with
        ppat_desc =
          Ppat_construct ({ txt = Lident x; loc }, Some ([], Pat.any ()));
      }
  | { ppat_desc = Ppat_or (p1, p2); _ } ->
      { t with ppat_desc = Ppat_or (do_ctor p1, do_ctor p2) }
  | _ -> t
*)
