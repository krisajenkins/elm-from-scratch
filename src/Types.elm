module Types exposing (..)

import Http


type alias News =
    { headline : String }


type FetchedData a
    = Loading
    | Failed Http.Error
    | Succeed a


type alias Model =
    { news : FetchedData (List News)
    }


type Msg
    = GetNewsResponse (FetchedData (List News))
