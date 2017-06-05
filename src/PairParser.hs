import Text.ParserCombinators.Parsec 
import System.Environment

main :: IO ()
main = do args <- getArgs
          putStrLn (readExpr (args !! 0))

yamlFile :: Parser [(String, Maybe String)]
yamlFile = endBy p_pair eol

eol :: Parser Char 
eol = char '\n'

p_content :: Parser Char 
p_content = letter <|> digit 

p_pair :: Parser (String, Maybe String)
p_pair = do
    name <- many1 (noneOf ": ,\n")
    value <- optionMaybe (string ": " >> many (p_content))
    return (name, value)

readExpr input = case parse yamlFile "yaml" input of 
    Left err -> "No match: " ++ show err
    Right val -> "Found: " ++ show val