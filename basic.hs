factorial 0 = 1
factorial n = n * factorial (n - 1)

libFactorial n = product [1 .. n]

multiply x 0 = 0
multiply x y = x + multiply x (y - 1)

power x 0 = 1
power x y = x * power x (y - 1)

plusOne x = x + 1

addition x 0 = x
addition x y = plusOne (addition x (y - 1))

getLength :: [a] -> Int
getLength [] = 0
getLength (x : xs) = 1 + getLength xs:

-- fold를 이용해서 리팩터링할 수 있다.

(++) :: [a] -> [a] -> [a]
[] ++ ys = ys
(x : xs) ++ ys = x : xs ++ ys

-- [1,2,3] ++ [4,5,6]
-- 1:[2,3] ++ [4,5,6]
-- 1:2:[3] ++ [4,5,6]
-- 1:2:3:[] ++ [4,5,6]
-- 1:2:3:[4,5,6] -> [1,2,3,4,5,6]

doubleList :: [Integer] -> [Integer]
doubleList [] = []
doubleList (n : ns) = (2 * n) : doubleList ns

-- map을 이용해서 리팩터링할 수 있다.

multiplyList :: Integer -> [Integer] -> [Integer]
multiplyList _ [] = []
multiplyList m (n : ns) = (m * n) : multiplyList m ns

doubleUseMultiply :: [Integer] -> [Integer]
doubleUseMultiply = multiplyList 2

applyToIntegers :: (Integer -> Integer) -> [Integer] -> [Integer]
applyToIntegers _ [] = []
applyToIntegers f (n : ns) = f n : applyToIntegers f ns

-- multiplyList m = applyToIntegers ((*) m)

customMap :: (a -> b) -> [a] -> [b]
customMap _ [] = []
customMap f (x : xs) = f x : map f xs

-- multiplyList m = map ((*) m)


