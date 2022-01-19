let Prelude = ../Prelude.dhall
-- 0 indexed replacement from the head.
in \(T : Type) -> \(n : Natural) -> \(ts : List T) -> \(t : T) ->
  let head = Prelude.List.take n T ts
  let tail = Prelude.List.drop (n + 1) T ts
  in head # [ t ] # tail
