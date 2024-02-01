--Aiden Lara Sylvester Constructs
--Basically you use matrix's to generate matrixes out of the previous matrixis, the first thing I need to do is create an array (matrix basically)

{- Ok below I am creating a function, I am saying sylConstruct has type Int, when defining variables this is how you go about it
for example if I wanted to create x and give it a value of 3 I would do

x :: Int
x = 3

Now you cannot change x once you give it three you are defining it as an interger with 3 with this line you are NOT assigning it three

Below though it is a function, this is becasue of the -> making it so that
slyConstruct is given an Int and turns in into a [[Int]]!!!

the vertical bracket, | , is basically just a switch stament, this is pretty practical in my opinion
-}
sylConstruct :: Int -> [[Int]]
slyConstruct x
  | x <= 0 = error "Magic Squares must be a positive integer" -- checking if x <= 0, then if it is it gives an error this is confusing because we are using <= and = but the = is an assignment.
    -- but some haskell magic = literally means equal so now x anywhere, will give error because it is mathematically??? equivilent to error
  | otherwise = --otherwise similar to else or more accuratly to the last line in a switch stament