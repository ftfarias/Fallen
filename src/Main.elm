module Main exposing (main)


import Browser
import Html exposing (..)
import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Row as Row
import Bootstrap.Grid.Col as Col
import Bootstrap.Button as Button
import Html.Events exposing (onClick)
import Html exposing (Html, button, div, text)
import Browser.Events exposing (onAnimationFrameDelta)
import Round exposing (round)

-- { init : flags -> ( Model, Cmd Msg )
-- , subscriptions : Model -> Sub Msg
-- , update : Msg -> Model -> ( Model, Cmd Msg )
-- , view : Model -> Html Msg
-- }

type alias Model =
    { count : Float
    , energy:Float }

type alias Flag =
    {
    }

--  width : Float
--, height : Float

init : Flag -> ( Model, Cmd msg )
init _ =
    ( { count = 0 
      , energy = 0  
    }, Cmd.none )


type Msg
    = Frame Float
    | UpdateA


subscriptions _ =
    onAnimationFrameDelta Frame


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of 
        Frame _ -> ( { model | energy = model.energy + 0.10 }, Cmd.none )
        UpdateA -> ( { model | energy = model.energy + 10 }, Cmd.none)
    
    


main : Program Flag Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



view : Model -> Html Msg
view model =
    Grid.container []
        [ CDN.stylesheet -- creates an inline style node with the Bootstrap CSS
        , Grid.row [ Row.centerXs ]
            [ Grid.col [ Col.xs2 ]
                [ text "Col 1" ]
               
            ]
        , Grid.row [ Row.centerXs ]
            [ Grid.col [ Col.xs1 ]
                [ text "Energy" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Hidrogen" ]
            , Grid.col [ Col.xs1 ]
                [ text "Oxigen" ]
            , Grid.col [ Col.xs1 ]
                [ text "Carbon" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Iron" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Titanium" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Noble gases" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Silicon" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Sulfur" ]        
            , Grid.col [ Col.xs1 ]
                [ text "?" ]        
            , Grid.col [ Col.xs1 ]
                [ text "?" ]        
            , Grid.col [ Col.xs1 ]
                [ text "?" ]        

        ]
        , Grid.row [ Row.centerXs ]
            [ Grid.col [ Col.xs1 ]
                [ text (Round.round 1 model.energy) ]
            , Grid.col [ Col.xs1 ]
                [ text "Oxigen" ]
            , Grid.col [ Col.xs1 ]
                [ text "Carbon" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Iron" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Titanium" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Noble gases" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Silicon" ]        
            , Grid.col [ Col.xs1 ]
                [ text "Sulfur" ]        
            , Grid.col [ Col.xs1 ]
                [ text "?" ]        
            , Grid.col [ Col.xs1 ]
                [ text "?" ]        
            , Grid.col [ Col.xs1 ]
                [ text "?" ]        
            , Grid.col [ Col.xs1 ]
                [ text "?" ]        
            ]
        ]

-- , Grid.col [ Col.xs4 ]
--                 [ text (String.fromFloat model.energy) 
--                 , Button.button
--                     [ Button.success
--                     , Button.large
--                     , Button.block
--                     , Button.attrs [ onClick UpdateA ]
--                     ] [ text (String.fromFloat model.count) ]
--                 ]
--             , Grid.col [ Col.xs4 ]
--                 [ Button.linkButton
--                                 [ Button.primary, Button.attrs [ ] ]
--                                 [ text "Start" ]
--                 ] 
             
        
        

        