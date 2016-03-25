main = putStrLn $ show $ problem_1 999

problem_1 0 = 0
problem_1 num = if xor (divides num 3) (divides num 5) then num + rest else rest
    where rest = problem_1 (num - 1)

divides num div = num `mod` div == 0
xor a b = a || b && not(a && b)
