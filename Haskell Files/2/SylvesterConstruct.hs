{-Ok so the main algorithmic issue behind this problem is not constructing the whole hammond matrix to make it work
im pretty sure. 

One efficency beyond this is creating one hammond matrix of the largest size n and then just baseing the other ones off that one,
as I said I really dont have a clue how I would only create a part of the matrix so I am just going to do this
-}

main :: IO()
main = do
    cases <- getLine
    let caseList = getCases (read cases) 0
    noIOPrint <- caseList
    print noIOPrint
    
{-There is a better way to do this with replicateM t $ do, however this is not something I would be able to practicly impliment
at my current level effectivly if I were in a situation where I couldnt just look it up

im also passign something here called biggest ham, this keeps track of the biggest n value and returns it


so getCases is like a variable or monad or whatever
right
and so in haskell = literally is the mathmatical equals like its not a set operator
so im defing with
getCases 0 big = yada yada
that any instance of getCases 0 big is equal mathematically to whatever I coded, idk why a function and a variable are the same thing and can do the same thing
but thats crazy
-}
getCases :: Int -> Int -> IO [[Int]]
getCases 0 big= return [big]--this is kind of like if else and in fact you can do this with if else in haskell but im doing it like this to stay pure to the language, its called pattern mathcing
getCases cases big= do
    input <- getLine
    let [n, row, col, width, height] = map read (words input) :: [Int]
    next <- getCases (cases-1) (\x -> )
    return ([n, row, col, width, height]:next)

{-jsut having some dumb fun with naming below
this is the function to make a hammond based off the biggest ham
-}
cookHam 

solveCases :: Int -> Int
runCase x = 0