module State exposing (..)

import Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( {}
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Nope ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
