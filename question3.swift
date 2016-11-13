/*
 Created by Deya Eldeen Elkhawaldeh, 2016
 Question 3:
 The prime factors of 13195 are 5, 7, 13 and 29.
 What is the largest prime factor of the number 600851475143 ?
 */

import Foundation // needed for sqrt

func checkIfPrimeNumber()
{
    var ranges = 1...100

    for n in ranges
    {
        for ( var count = 2;count <= n;count++)
        {
            if n%count == 0 && count != n
            {
                //print ("\(n) is divisible by (count) hence it is not a prime number")
                break
            }
            else if (count == n)
            {
                print ("\(n) is a prime number")
            }
        } 
    }
}

func solution3()
{
    func primeFactorsOf(number: Int) -> [Int]
    {
        if number < 4
        {
            return [number]
        }
        let lim = Int(sqrt(Double(number)))
        for x in 2...lim
        {
            if number % x == 0
            {
                var result = [x]
                result.appendContentsOf(primeFactorsOf(number / x))
                return result
            }
        }
        return [number]
    }
    
    for i in 0...100
    {
        //print(primeFactorsOf(i))
    }
    
    print(primeFactorsOf(600851475143))
}

