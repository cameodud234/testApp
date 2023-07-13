//
//  main.swift
//  TestApp
//
//  Created by Cameron Dudley on 5/6/23.
//

import Foundation

var number: Int = Int.random(in: 0..<9);

var number_count: [Int : Int] = [:];

var minCount : Int = 0;
var maxCount : Int = Int(10e4);

for number in minCount..<maxCount {
    let randomNumber = Int.random(in: 0..<10);
    if number_count.contains(where: {randomNumber in number_count.keys}) {
        number_count.updateValue(number_count[randomNumber] + 1, forKey: randomNumber);
    }
    else{
        number_count[randomNumber] = 1;
    }
}
