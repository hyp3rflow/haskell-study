area = 1 + 2

-- Int는 type
area_1 :: Int -> Int -> Int
area_1 a b = a + b

-- Num은 type class (Rust trait 느낌), a를 Num의 인스턴스들로 제한한다.
area_2 :: Num a => a -> a -> a
area_2 a b = a + b

-- Guard
abs x
  | x < 0 = negate x
  | otherwise = x

numOfSolutions a b c
  | disc > 0 = 2
  | disc == 0 = 1
  | otherwise = 0
  where
    disc = b ^ 2 - 4 * a * c

tempList = [1, 2, 3]

-- 1:[2,3]
-- 1:2:3:[] == 1:(2:(3:[]))
-- (:) :: a -> [a] -> [a]

makeList a b c = [[a], [b, c]]

tuple = (2, False)

-- 2개가 아니면 안됨
whoIsTheFirst = fst tuple

hello (a : b) = do
  putStrLn a
hello [] = do
  putStrLn "empty list"

temp :: Int -> Int -> Int
temp 0 b = 0 * b
temp a b = a + b

-- 3 / length (1:2:3:[]) -> Error (Int로 한정되어 있어서)
polymorph = 3 / fromIntegral (length [1, 2, 3])

-- Pattern matching
pts :: Int -> Int
pts 1 = 10
pts 2 = 6
pts _ = 0

actions = do
  putStrLn "Please enter your name: "
  name <- getLine
  putStrLn ("Hello, " ++ name ++ ", how are you?")

practice = do
  putStrLn "The base?"
  base <- getLine
  putStrLn "The height?"
  height <- getLine
  let baseFloat = read base :: Float
      heightFloat = read height :: Float
   in putStrLn ("The area of that triangle is " ++ show (baseFloat * heightFloat))

add :: Num a => a -> a -> a
add a b = a + b

square :: Num a => a -> a
square a = a ^ 2

addAndSquare = (square .) . add