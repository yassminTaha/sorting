//: Playground - noun: a place where people can play

import UIKit

class SortHelper
{
    func Sort<T : Comparable>(objects : inout [T]) -> [T]
    {
        let count = objects.count
        var  temp = objects[0]
        
        for _ in 0..<count-1
        {
            for j in 0..<count-1
            {
                if(objects[j] > objects[j+1])
                {
                    temp = objects[j]
                    objects[j] = objects[j+1]
                    objects[j+1] = temp
                }
            }
        }
        return objects;
    }
}


var sortHelper = SortHelper()
var unsortedNumbersList = [5,3,2,5,6,7]
var unSortedStringsList = ["Oranges","Apples","Bananas","Mangoes"]
var sortedNumbers = sortHelper.Sort(objects:&unsortedNumbersList)
var sortedStrings = sortHelper.Sort(objects:&unSortedStringsList)
print("Sorted Numbers:\(sortedNumbers)")
print("Sorted Numbers:\(sortedStrings)")
