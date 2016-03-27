main = print $ sum [x | x <- [1..999], divides x 3 || divides x 5]

divides n d = n `mod` d == 0

xor a b = (a || b) && not(a && b)
