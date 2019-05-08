import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
  { string1 : String
  , string2 : String
  }


init : Model
init =
  Model "" "" 



-- UPDATE


type Msg
  = String1 String
  | String2 String


update : Msg -> Model -> Model
update msg model =
  case msg of
    String1 string1 ->
      { model | string1 = string1 }

    String2 string2 ->
      { model | string2 = string2 }

-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ viewInput "string1" "String 1" model.string1 String1
    , viewInput "string2" "String 2" model.string2 String2
    , viewString model
    ]


viewInput : String -> String -> String -> (String -> msg) -> Html msg
viewInput t p v toMsg =
  input [ type_ t, placeholder p, value v, onInput toMsg ] []
  
viewString : Model -> Html msg
viewString model =
    
    div [] [ text (model.string1) , text " : " , text (model.string2) ]
