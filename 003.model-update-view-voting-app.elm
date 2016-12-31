import Html exposing (div, button, text, Html)
import Html.Events as Event

type alias Candidate = { name: String, votes: Int }
type alias Vote = Int

john : Candidate
john =
  { name = "John", votes = 0}

calculateVote : Vote -> Candidate -> Candidate
calculateVote vote john =
  { name = john.name, votes = (john.votes + vote) }

myView : Candidate -> Html Int
myView model =
  div [] [
    button [ Event.onClick 1 ][ text "Vote for John" ]
    ,div [] [ text ("Vote for " ++ model.name ++
      " is currently sitting at "  ++ toString model.votes) ]
  ]

main =
  Html.beginnerProgram
  { model = john
    , view = myView
    , update = calculateVote
  }