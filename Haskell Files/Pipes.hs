--Pipes is a 9.1 difficulty problem
--the reason I am trying to solve it is because I have a personal intest in this problem
--like literally two personal connections
--I'm thinking this can be solved with A* and I want to try, I already know the problem is going to be the mutiple paths though


{-Main-}
main :: IO()
main = do
    instances <- readLn :: IO Int
    
    let caseListIO = getCases instances
    caseList <- caseListIO
    
    print caseList



{-Gets the Inputs-}
getCases :: Int -> IO [[[Int]]]
getCases 0 = return []
getCases cases = do
    dimensions <- getLine
    vals <- getLine
    let [width, height, amount] = map read (words dimensions) :: [Int]
    let roots = map read (words vals) :: [Int]
    next <- getCases (cases-1)
    return ([[width, height, amount], roots]:next) -- ok so returning lists is a bit weird


{-So, it might be better to have this and getCases be combined, idk -}
allSearch :: [[[Int]]] -> [Int]
allSearch get
mainSearch :: [[Int]]