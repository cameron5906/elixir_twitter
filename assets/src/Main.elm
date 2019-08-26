module Router exposing (..)

import Browser exposing (..)
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes as Attr
import Url exposing (Url)
import Url.Parser as Parser exposing ((</>), Parser, oneOf, s, string)

import Layout as Layout
import Page.Login as LoginPage exposing (view)

main = Browser.application
    {
        init = init,
        update = update,
        view = view,
        subscriptions = subscriptions,
        onUrlChange = UrlChanged,
        onUrlRequest = LinkClicked
    }

type Msg
    = Login
    | UrlChanged Url.Url
    | LinkClicked Browser.UrlRequest

type alias Model =
    {
        page: String
    }

init : flags -> Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    ({
        page = "login"
    }, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

update: Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case model.page of
        "login" ->
            (model, Cmd.none)

view: Model -> Html Msg
view model =
    case model.page of
        "login" ->
            LoginPage.view model