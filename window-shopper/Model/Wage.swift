//
//  Wage.swift
//  window-shopper
//
//  Created by Sau on 8/14/19.
//  Copyright © 2019 Sau. All rights reserved.
//

import Foundation

class Wage {
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
