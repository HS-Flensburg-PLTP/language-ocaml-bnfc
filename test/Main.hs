import Language.Ocaml.Par (myLexer, pImplementation)
import Test.HUnit

successTest :: String -> Test
successTest input = TestCase $ do
  let ts = myLexer input
  case pImplementation ts of
    Right _ -> return ()
    Left err -> assertFailure ("Parsing failed with error: " ++ err)

main :: IO Counts
main =
  runTestTT $
    TestList
      ( map
          successTest
          [ "x = '",
            "let x =\"Usage: %s [COMMAND] \n\nValid values for COMMAND:\n%s\n\nDefault values if unspecified:\n COMMAND\tstatus\n\nStatus command options:\""
          ]
      )