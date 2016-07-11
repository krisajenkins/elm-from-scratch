module State exposing (..)

import Rest exposing (..)
import Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( { news = [] }
    , getNews
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Nope ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
