-- type "ghci change.hs" in terminal to open interpreter
-- type "change(n)" with n being an integer 
-- it will return the optimal change in coins of the entered amount
-- type ":quit" to exit the interpreter


coins :: [Int]
coins = [200, 100, 50, 20, 10, 5, 2, 1]
change :: Int -> [Int]
change muenzen = loopinnen muenzen 0 []
  where
    loopinnen :: Int -> Int -> [Int] -> [Int]
    loopinnen m s res
      | m-(position s coins) >= 0 = loopinnen (m - (position s coins)) s ((position s coins):res)
      | (position s coins) >= 2 = loopinnen m (s+1) res
      | otherwise = reverse res
    position :: Int -> [Int] -> Int
    position ind (a:ab)
      | ind == 0 = a
      | otherwise = position (ind-1) ab