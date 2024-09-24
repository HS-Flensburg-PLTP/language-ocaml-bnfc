{-# LANGUAGE QuasiQuotes #-}

import Language.Ocaml.Par (myLexer, pImplementation)
import Path (fromRelDir, reldir)
import System.FilePath (takeFileName)
import System.FilePath.Find (always, extension, fileName, find, (==?))
import Test.HUnit

successTest :: FilePath -> Test
successTest filePath = TestCase $ do
  input <- readFile filePath
  let ts = myLexer input
  case pImplementation ts of
    Right _ -> return ()
    Left err -> assertFailure ("Parsing " ++ fileName ++ " failed with error: " ++ err)
  where
    fileName = takeFileName filePath

main :: IO Counts
main = do
  filePaths <- find always (extension ==? ".ml") (fromRelDir [reldir|test/programs|])
  runTestTT $
    TestList
      (map successTest filePaths)
