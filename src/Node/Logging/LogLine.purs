module Node.Logging.LogLine where

import Prelude

import Data.Argonaut.Core (jsonEmptyObject, stringify)
import Data.Argonaut.Encode ((:=), (~>))
import Data.JSDate (now, toISOString)
import Effect.Class (class MonadEffect, liftEffect)
import Node.Logging.LogLevel (LogLevel)

type LogLine =
  { timestamp ∷ String
  , level ∷ LogLevel
  , message ∷ String
  }

format ∷ LogLine → String
format { timestamp, level, message } = stringify
  $ "timestamp" := timestamp
      ~> "level" := show level
      ~> "message" := message
      ~> jsonEmptyObject

note ∷ ∀ m. MonadEffect m ⇒ LogLevel → String → m LogLine
note level message = do
  timestamp ← liftEffect $ toISOString =<< now
  pure $ { timestamp, level, message }
