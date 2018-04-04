//
//  Direction.swift
//  ExpendableMenu
//
//  Created by Marcel Hagmann on 03.04.18.
//  Copyright © 2018 Marcel Hagmann. All rights reserved.
//

import UIKit

public enum Direction {
    case right
    case bottom
    case left
    case top
    case degree(CGFloat)
    case radian(CGFloat)
    
    public static var allDirections = [Direction.top,
                                       .right,
                                       .bottom,
                                       .left]
}
