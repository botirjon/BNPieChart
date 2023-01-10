//
//  ViewController.swift
//  BNPieChart
//
//  Created by botirjon on 01/10/2023.
//  Copyright (c) 2023 botirjon. All rights reserved.
//

import UIKit
import BNPieChart

class ViewController: UIViewController {

    private lazy var pieChart: BNPieChart = {
        let pieChart = BNPieChart()
        pieChart.translatesAutoresizingMaskIntoConstraints = false
        return pieChart
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pieChart)
        
        NSLayoutConstraint.activate([
            pieChart.centerXAnchor.constraint(equalTo: pieChart.superview!.centerXAnchor),
            pieChart.centerYAnchor.constraint(equalTo: pieChart.superview!.centerYAnchor),
            pieChart.widthAnchor.constraint(equalToConstant: 150),
            pieChart.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        pieChart.setSlices([
            .init(title: "", color: .red, weight: 10),
            .init(title: "", color: .green, weight: 20),
            .init(title: "", color: .blue, weight: 30)
        ])
        
        pieChart.thickness = 20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

