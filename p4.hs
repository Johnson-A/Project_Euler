main = print $ maximum [x | y <- [100..999], z <- [y..999], let x = y * z, isPalindrome x]

isPalindrome x = s == reverse s
  where s = show x

