module Helper exposing (..)

import Html


mit : { name : String, age : Int, email : String }
mit =
    { name = "Manuel"
    , age = 20
    , email = "nidiak428@gmail.com"
    }



--Ejercicio add2


add2 : Int -> Int -> Int
add2 n1 n2 =
    n1 + n2



--Ejercicio add3


add3 : Float -> Float -> Float -> Float
add3 n1 n2 n3 =
    n1 + n2 + n3



--Funcion calc


rest : Int -> Int -> Int
rest n1 n2 =
    n1 - n2


sum : Int -> Int -> Int
sum n1 n2 =
    n1 + n2


div : Int -> Int -> Int
div n1 n2 =
    n1 // n2


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc n1 n2 func =
    func n1 n2



-- Ejercicio 1 programming languages


languages : List { name : String, releaseYear : Int, currentVersion : String }
languages =
    [ { name = "JavaScript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 2025"
      }
    , { name = "TypeScript"
      , releaseYear = 2012
      , currentVersion = "5.9.3"
      }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list



-- Ejercicio #2 Student or professor


user : List { name : String, uType : String }
user =
    [ { name = "Derek"
      , uType = "Student"
      }
    , { name = "Mitsiu"
      , uType = "Professor"
      }
    ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents list =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        list



-- Ejercicio #3 Videojuegos


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videoGame : List Videogame
videoGame =
    [ { title = "Minecraft"
      , releaseYear = 2009
      , available = True
      , downloads = 300000000
      , genres = [ "Sandbox", "Survival" ]
      }
    , { title = "GTA V"
      , releaseYear = 2013
      , available = True
      , downloads = 215000000
      , genres = [ "Action", "" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list



--Ejercicio #4 computer


computer : { ram : String, model : String, brand : String, screenSize : String }
computer =
    { ram = "16GB"
    , model = "LOQ"
    , brand = "Lenovo"
    , screenSize = "16 inches"
    }


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "LOQ"
    , brand = "Lenovo"
    , screenSize = "16 inches"
    }


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
