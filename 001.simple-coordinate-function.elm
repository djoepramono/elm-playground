import Html exposing(text)

coordinate : (number, number) -> String
coordinate (x,y) =
    "The coordinate is " ++ toString x ++ "," ++ toString y

main =
    text (coordinate (2, 3))