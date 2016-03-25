def sumDigitPowers(x,n):
    digitSum = 0
    while x > 0:
        digitSum += (x%10)**n
        x //= 10
    
    return digitSum

def sumPowerNumbers(n):
    maxDigits = 1
    while (9**n) * maxDigits >= (10**maxDigits) - 1:
        maxDigits += 1

    count = 0   
    for x in range(2,10**maxDigits):
        if sumDigitPowers(x,n) == x:
            count += x
            print(x)
    
    return count

print('Sum is =', sumPowerNumbers(7))