const : {A B : Set} -> A -> B -> A
const  a  =  \ _ -> a 

data List (X : Set): Set where
  [] : List X
  _::_ : X -> List X -> List X


append : {X : Set} -> List X -> List X -> List X
append [] ys = ys
append (x :: xs) ys = x :: (append xs ys)
