main :: IO()
main = do
    input <-readLn :: IO [Int]
    
    let yesorno = reout input
    print yesorno
    
reout :: [Int] -> [String]
