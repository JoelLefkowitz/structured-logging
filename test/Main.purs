module Test.Main where

import Prelude

import Effect (Effect)
import Node.Logging.LogLevel (LogLevel(..))
import Node.Logging.LogLine (note)
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner.Node (runSpecAndExitProcess)

main ∷ Effect Unit
main = runSpecAndExitProcess [ consoleReporter ] do
  describe "note" do
    it "creates a log entry" do
      log ← note INFO "message"
      log.level `shouldEqual` INFO
      log.message `shouldEqual` "message"
