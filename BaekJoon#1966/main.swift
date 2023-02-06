//
//  main.swift
//  BaekJoon#1966
//
//  Created by 김병엽 on 2023/02/07.
//
// Reference: https://velog.io/@yc1303/백준-Python-Swift-1966번-프린터-큐

import Foundation

func solution() {
    
    let testCase = Int(readLine()!)!
    
    for _ in 0..<testCase {
        
        let inputNM = readLine()!.split(separator: " ").map { Int(String($0))! }
        let M = inputNM[1]
        
        var printCount = 0
        
        var tempPriorityList = readLine()!.split(separator: " ").map { Int(String($0))! }
        var priorityList: [(Int, Int)] = []
        
        for (index, priority) in tempPriorityList.enumerated() {
            
            let tuple = (priority, index)
            priorityList.append(tuple)
            
        }
        
        tempPriorityList.sort()
        
        while true {
            
            if priorityList[0].0 == tempPriorityList.max() {
                printCount += 1
                
                if priorityList[0].1 == M {
                    print(printCount)
                    break
                } else {
                    tempPriorityList.removeLast()
                    priorityList.removeFirst()
                }
            } else {
                priorityList.append(priorityList.removeFirst())
            }
            
        }
        
    }
    
}

solution()
