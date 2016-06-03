import Html exposing (div, button, text)
import Html.App exposing (beginnerProgram)
import Html.Events exposing (onClick)


main =
  beginnerProgram { model = 0, view = view, update = update }


view model =
  div []
    [ button [ onClick Increment ] [ text "Click here" ]
    , div [] [ text (toString model) ]
    ]


type Msg = Increment


update msg model =
      model + 1
