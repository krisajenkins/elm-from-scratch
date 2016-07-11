module Types exposing (..)

import Http


type alias News =
    { headline : String }


type alias Model =
    { news : List News
    , error : Maybe Http.Error
    }


type Msg
    = GetNewsResponse (Result Http.Error (List News))
