module Layout exposing (..)
import Browser exposing (Document)
import Html exposing (Html, a, button, div, footer, i, img, li, nav, p, span, text, ul)
import Html.Attributes exposing (class, classList, href, style)
import Html.Events exposing (onClick)

view: {content: Html msg} -> Html msg
view {content} =
    div [][
        text "Test"
    ]