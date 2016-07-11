module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


root : Model -> Html Msg
root model =
    div []
        [ h1 [ style [ ( "font-style", "italic" ) ] ]
            [ text "News!" ]
        , case model.news of
            Loading ->
                text "Loading"

            Failed error ->
                div [ class "alert alert-danger" ]
                    [ text (toString error) ]

            Succeed news ->
                ul [] (List.map newsItem news)
        ]


newsItem : News -> Html Msg
newsItem news =
    li []
        [ h3 []
            [ text (Debug.log "Showing" news.headline) ]
        ]
