module Main exposing (main)

import Html exposing (Html, beginnerProgram, button, div, text)
import Html.Events exposing (onClick)


type Action
    = Increment
    | Decrement


view : Int -> Html Action
view counter =
    div []
        [ text ("Counter: " ++ toString counter)
        , button [ onClick Increment ] [ text "Increment" ]
        , button [ onClick Decrement ] [ text "Decrement" ]
        ]


update : Action -> Int -> Int
update action counter =
    case action of
        Increment ->
            counter + 2048

        Decrement ->
            counter - 1


main : Program Never Int Action
main =
    beginnerProgram
        { model = 0
        , view = view
        , update = update
        }
