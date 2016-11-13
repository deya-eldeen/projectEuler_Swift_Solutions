import Foundation

func printTimeElapsedWhenRunningCode(title:String, operation:()->())
{
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed for ________________ \(title): ________________ \(timeElapsed) s")
}

printTimeElapsedWhenRunningCode("Problem 1 ", operation: solution1)
printTimeElapsedWhenRunningCode("Problem 2 ", operation: solution2)
printTimeElapsedWhenRunningCode("Problem 2B", operation: solution2_recursive)
printTimeElapsedWhenRunningCode("Problem 3 ", operation: solution3)
printTimeElapsedWhenRunningCode("Problem 4 ", operation: solution4)


