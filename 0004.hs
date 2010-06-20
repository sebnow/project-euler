largestPalindrome :: Int -> Int
largestPalindrome n = maximum [ x | y <- [lowest..highest],
                                    z <- [y..highest],
                                    let x = y * z,
                                    isPalindrome x ]
    where highest = read $ take n (repeat '9') -- e.g. 999
          lowest = read $ "1" ++ (take (n - 1) (repeat '0')) -- e.g. 100

isPalindrome :: Int -> Bool
isPalindrome x = s == reverse s
    where s = show x

