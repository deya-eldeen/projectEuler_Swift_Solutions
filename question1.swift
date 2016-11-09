/*
 Created by Deya Eldeen Elkhawaldeh, 2016
 Question 1:
 If we list all the natural numbers below 10 that are multiples of 3 or 5,
 we get 3, 5, 6 and 9. The sum of these multiples is 23.
 Find the sum of all the multiples of 3 or 5 below 1000.
 Answer : solution : 233168
*/

import Foundation
var sum = 0
for index in 1..<1000
{
    if index % 3 == 0 || index % 5 == 0
    {
        sum += index
    }
}
print(sum)
