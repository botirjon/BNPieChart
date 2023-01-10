//
//  BNPieChartSlice.swift
//  
//
//  Created by Botirjon Nasridinov on 07/01/23.
//

import UIKit

public struct BNPieChartSlice {
    public var title: String = ""
    public var color: UIColor = .random()
    public var weight: Float
    
    public init(title: String = "", color: UIColor = .clear, weight: Float) {
        self.title = title
        self.color = color
        self.weight = weight
    }
    
    internal var share: CGFloat {
        CGFloat(weight)
    }
}
