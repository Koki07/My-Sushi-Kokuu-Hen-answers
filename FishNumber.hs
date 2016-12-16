module Main where

-- 002
-- S変換
f n = n + 1
b :: Integer -> Integer -> Integer
b m n
  | m < n && m == 0 = f n
  | m > 0 && n == 0 = b (m - 1) 1
  | m > 0 && n > 0 = b (m - 1) (b m (n - 1))

g :: Integer -> Integer
g x = b x x

-- 003
-- S2変換氏
-- s2 = s^

-- main
main :: IO ()
main = do
  print $ g 3
