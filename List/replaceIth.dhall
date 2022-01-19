let Prelude = ../Prelude.dhall
-- 0 indexed replacement from the head or tail.
-- Positive numbers replace from the head, with 0 being the head element.
-- Negative numbers replace from the tail, with -0 being the tail element.
in \(T : Type) -> \(i : Integer) -> \(ts : List T) -> \(t : T) ->
  let n = Prelude.Integer.abs i
  in Prelude.List.reverse T (replaceNth n T (if (Prelude.Integer.positive i) then ts else Prelude.List.reverse T ts) t)
