{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Main where

import Web.Scotty
import Data.Text.Lazy(pack)
import Data.ByteString.Lazy.Char8(unpack)
import Data.Monoid ((<>))
import SimpleParser

main :: IO ()
main = webServer 


webServer :: IO ()
webServer = do
    scotty 3000 $ do
       
        get "/test" $ do
            text (pack (readExpr "name: test\n"))

        post "/parse" $ do
            parseData <- body 
            text (pack (readExpr (unpack $ parseData)))