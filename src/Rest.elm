module Rest exposing (..)

import Types exposing (..)


getNews : Cmd Msg
getNews =
    "https://hn.algolia.com/api/v1/search_by_date?tags=story&hitsPerPage=50"
