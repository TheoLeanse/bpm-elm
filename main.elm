import Html exposing (div, button, text)
import Html.App exposing (beginnerProgram)
import Html.Events exposing (onClick)
import Time exposing (now)
import Date exposing (second)
import Task exposing (perform)


main =
    beginnerProgram { model = model, view = view, update = update }

model =
    { beats = []
    , timestamp = 0
    }

view model =
    div []
        [ button [ onClick now ] [ text "Click here" ]
        , div [] [ text (toString model) ]
        ]

type Msg = Increment

update now model =
    { model | beats = model.beats ++ [now] }
