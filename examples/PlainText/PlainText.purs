module Examples.PlainText.Main where

import Prelude
import Effect (Effect)
import Effect.Class.Console (log)
import Web.DownloadJs (download)

main :: Effect Unit
main = do
  couldDownload <- download "hello world" "hello.txt" "text/plain"
  log $ if couldDownload
    then "Done!"
    else "Couldn't download, because your browser is a potato."