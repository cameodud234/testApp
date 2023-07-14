//
//  main.swift
//  TestApp
//
//  Created by Cameron Dudley on 5/6/23.
//

import Foundation

var number_count: [Int : Int] = [:];

var minCount : Int = 0;
var maxCount : Int = Int(10e5);
var totalCount : Int = maxCount - minCount;

for _ in minCount..<maxCount {
    let randomNumber = Int.random(in: 0..<10);
    if let count = number_count[randomNumber] {
        number_count.updateValue(count + 1, forKey: randomNumber);
    }
    else {
        number_count[randomNumber] = 1;
    }
}

var number_count_2: [Int : Double] = [:];

for (key, value) in number_count {
    let updatedValue: Double = Double(value) / Double(totalCount);
    number_count_2[key] = updatedValue;
}



for (key, value) in number_count_2 {
    print("random number: \(key), percent: \(value * 100)%");
}
