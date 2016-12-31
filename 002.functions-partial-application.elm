import Html exposing(text, div)

-- Partial application
add : number -> number -> number
add x y =
    x + y

-- add2 is basically covers `add x` part of `add x y`
add2 = add 2
var1 = add2 3

-- to make it readable use | pipe
var2 = 3
    |> add2

-- more examples using pipe
var3 = 4
    |> add2
    |> add 7

main =
    div[] [
        text ("var1 (" ++ toString var1 ++ ") is the same as var2 (" ++ toString var2 ++ ")" ),
        text ("but not the same as var3 (" ++ toString var3 ++ ")")
    ]
