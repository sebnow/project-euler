import Control.Monad

isPythegorean :: (Integral a) => a -> a -> a -> Bool
isPythegorean a b c | a < b && b < c = a ^ 2 + b ^ 2 == c ^ 2
                    | otherwise      = False

triplets :: (Integral a) => a -> [(a, a, a)]
triplets n = do
    a <- [0 .. n]
    b <- [a + 1 .. n]
    let c = n - a - b
    guard (a + b + c == n && isPythegorean a b c)
    return (a, b, c)

main = putStrLn . show . (\(a, b, c) -> a * b * c) . head $ triplets 1000
