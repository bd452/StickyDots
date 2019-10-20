//
//  ViewController.swift
//  StickyDotsExample
//
//  Created by Bryce Dougherty on 10/19/19.
//  Copyright © 2019 The Farm. All rights reserved.
//

import UIKit
import StickyDots

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewWidth = self.view.bounds.width
        let viewHeight = self.view.bounds.height
        scrollView.contentSize = CGSize(width: viewWidth * 5, height: viewHeight)
        
        let colors: [UIColor] = [.red, .green, .blue, .purple, .yellow]
        for i in 0...4 {
            let view = UIView(frame: CGRect(x: viewWidth*CGFloat(i), y: 0, width: viewWidth, height: viewHeight))
            view.backgroundColor = colors[i]
            scrollView.addSubview(view)
        }
        
        scrollView.isPagingEnabled = true
        let dotsView = StickyDotsView(frame: CGRect(x: 0, y: 0, width: 0, height: 10), attachedTo: scrollView)
        dotsView.center = CGPoint(x: viewWidth * 0.5, y: 100)
//        self.view.addSubview(scrollView)
        self.view.addSubview(dotsView)

    }


}

