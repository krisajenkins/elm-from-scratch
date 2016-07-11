module Types exposing (..)


type alias News =
    { headline : String }


type alias Model =
    { news : List News }


type Msg
    = Nope
