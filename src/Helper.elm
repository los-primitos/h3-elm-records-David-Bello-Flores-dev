module Helper exposing (..)

import Html
import Html.Attributes



-- === EJERCICIOS ===
-- Suma dos enteros


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2



-- Suma tres flotantes


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3



-- Recibe dos enteros y una función de operación


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



-- === EJERCICIO 1: LENGUAJES ===


programmingLanguages : List { name : String, releaseYear : Int, currentVersion : String }
programmingLanguages =
    [ { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "JavaScript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames names =
    List.map .name names



-- === EJERCICIO 2: USUARIOS ===


users : List { name : String, uType : String }
users =
    [ { name = "Mitsiu", uType = "Professor" }
    , { name = "Roberto", uType = "Student" }
    ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents a =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        a



-- === EJERCICIO 3: VIDEOJUEGOS ===


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres generos =
    List.map .genres generos



-- === EJERCICIO 4: LAPTOP ===


type alias Computer =
    { ram : String, model : String, brand : String, screenSize : String }


myLaptop : Computer
myLaptop =
    { ram = "32", model = "Thinkpad", brand = "lenovo", screenSize = "13" }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram: " ++ myLaptop.ram) ]
                , Html.li [] [ Html.text ("Modelo: " ++ myLaptop.model) ]
                , Html.li [] [ Html.text ("Marca: " ++ myLaptop.brand) ]
                , Html.li [] [ Html.text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
