module Main where
import SomeHXTArrows
import Text.XML.HXT.Core


main = do
    runX (readDocument [withValidate no, withParseHTML yes] ""
          >>> this 
          >>> writeDocument [withXmlPi no] "-")

