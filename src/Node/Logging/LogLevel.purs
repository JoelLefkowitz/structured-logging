module Node.Logging.LogLevel where

import Prelude

data LogLevel = INFO | WARN | ERROR

derive instance eqLogLevel ∷ Eq LogLevel

instance showLogLevel ∷ Show LogLevel where
  show INFO = "INFO"
  show WARN = "WARN"
  show ERROR = "ERROR"
