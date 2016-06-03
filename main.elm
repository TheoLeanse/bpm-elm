import Html exposing (div, button, text)
import Html.App exposing (beginnerProgram)
import Html.Events exposing (onClick)
import Time exposing (now)
import Date exposing (second)


main =
    beginnerProgram { model = model, view = view, update = update }

model =
    []

view model =
    div []
        [ button [ onClick Increment ] [ text "Click here" ]
        , div [] [ text (toString model) ]
        ]


type Msg = Increment

update msg model =
    model ++ [now]
