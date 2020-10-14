# purescript-downloadjs 
[![Build Status](https://travis-ci.com/chekoopa/purescript-downloadjs.svg?branch=master)](https://travis-ci.com/chekoopa/purescript-downloadjs) 
[![Documetation on Pursuit](https://pursuit.purescript.org/packages/purescript-downloadjs/badge)](https://pursuit.purescript.org/packages/purescript-downloadjs)

A library which binds [download.js](https://github.com/rndme/download) function to PureScript, 
so you can download your data from an HTML5 browser in a type-safe way.

## Installation

We import the download function as a Node library, so you should add it in your project: 

```bash
npm install downloadjs
```

Then add this library (`downloadjs`) to your `spago.dhall`. 

If it's not in a fresh package set, [you'll have an extra step](https://github.com/purescript/spago#add-a-package-to-the-package-set).

## Introduction

You can simply trigger a download with the `download` function, providing it your payload, file name and 
MIME type (if you don't know what to provide, use `application/octet-stream`).

```purescript
module Main where

import Prelude
import Web.DownloadJs (download)
import Effect.Class.Console (log)

main = do
  couldDownload <- download "hello world" "hello.txt" "text/plain"
  log $ if couldDownload 
    then "Done!"
    else "Couldn't download, because your browser is a potato."  
```

Payload supports strings (and data URLs in it), blobs from `web-file`, and 
typed arrays from `arraybuffer-types`. These types are included in `Downloadable` type class.

## Fail safety

Actually, there's none, besides of that function returns `False` if it couldn't trigger a download.
For other cases, use exception handling. 

## Module documentation

Module documentation is [published on Pursuit](http://pursuit.purescript.org/packages/purescript-downloadjs).

## License

This library is [MIT licensed](LICENSE).
