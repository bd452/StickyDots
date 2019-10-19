//
//  StickyDotsView.swift
//  StickyDots
//
//  Created by Bryce Dougherty on 10/19/19.
//  Copyright © 2019 The Farm. All rights reserved.
//

import UIKit

public class StickyDotsView: UIView {
    
    private var indicatorView = UIView(frame: CGRect(x: 10,y: 10,width: 10,height: 10))
    
    private var scrollViewObserver: NSKeyValueObservation?
//    private var indicatorViewSuperview = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 20))
    @objc private var attachedView: UIScrollView?
    
    private var scrollIndicatorSize: CGFloat = 0
    
    /// Automatically managed if you set the attached view. Can be set manually.
    public var viewWidth: CGFloat?
    private var _viewWidth: CGFloat {
        return viewWidth ?? attachedView?.frame.width ?? 0
    }
    
    /// Automatically managed if you set the attached view. Can be set manually.
    public var numOfPages: Int?
    private var _numOfPages: Int {
        let scrollViewPages:Int? = attachedView != nil ? Int(round(attachedView!.contentSize.width / _viewWidth)) : nil
        return numOfPages ?? scrollViewPages ?? 0
    }
    
    public var circleWidth: CGFloat = 10
    
   
    
    public convenience init(frame: CGRect, attachedTo: UIScrollView? = nil) {
        self.init(frame: frame)
        self.attachedView = attachedTo
        
        let indicatorsWidth = CGFloat(2 * _numOfPages - 1) * circleWidth
        indicatorView.frame.size.width = circleWidth
        indicatorView.center.x = circleWidth
        indicatorView.layer.cornerRadius = circleWidth * 0.5
        indicatorView.backgroundColor = .white
        
        self.frame.size = CGSize(width: indicatorsWidth, height: circleWidth)
        
        let dotsView = UIView(frame: CGRect(x: 0, y: 0, width: indicatorsWidth, height: circleWidth))
        for i in 0...(_numOfPages - 1) {
            let dotView = UIView(frame: CGRect(
                x: (circleWidth * 0.5) + (2 * circleWidth * CGFloat(i)),
                y: circleWidth,
                width: circleWidth,
                height: circleWidth))
            
            dotView.backgroundColor = .black
            dotView.alpha = 0.5
            dotView.layer.cornerRadius = circleWidth * 0.5
            dotsView.addSubview(dotView)
        }
        
        self.addSubview(dotsView)
        self.addSubview(indicatorView)
        print("laid out subviews")
    }
    
    override public func layoutSubviews() {
        if self.attachedView != nil && self.scrollViewObserver == nil {
            self.scrollViewObserver = observe(
                \.attachedView!.contentOffset,
                options: .new
            ) { object, change in
                self.updatePageIndicator(offset: change.newValue!.x)
            }
        }
    }
    
    public func updatePageIndicator(offset: CGFloat) {
        let xccord = offset
        let number = xccord / _viewWidth
        let page = Int(floor(number))
        let diff = number - CGFloat(page)
        let distance = 0.5 - diff
        let absolute = abs(distance) * 2
        scrollIndicatorSize = page >= 0 && page < _numOfPages - 1  ? circleWidth + ((1 - absolute) * 2 * circleWidth) : circleWidth
        indicatorView.frame.size.width = scrollIndicatorSize
        if xccord >= 0 {
            indicatorView.center.x = circleWidth + number * 2 * circleWidth
        }
        else if xccord < _viewWidth * CGFloat(_numOfPages - 1) {
            indicatorView.center.x = circleWidth
        }
        else {
            indicatorView.center.x = circleWidth + CGFloat(_numOfPages - 1) * circleWidth
        }
        indicatorView.layer.cornerRadius = 5
        print(indicatorView.frame)
    }
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
