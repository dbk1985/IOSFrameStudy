//
//  ViewController.swift
//  AppStoreDemo
//
//  Created by wzkj on 15/12/3.
//  Copyright © 2015年 wzkj. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{
    private let yOffset:CGFloat = 260
    private let topViewHeight:CGFloat = 240
    
    var topView:UIView? = nil
    var bottomView:UIView? = nil
    var containerView:UIView? = nil
    
    override func loadView() {
        let scrollView : UIScrollView = UIScrollView(frame: CGRectMake(0,0,CGRectGetWidth(UIScreen.mainScreen().bounds), CGRectGetHeight(UIScreen.mainScreen().bounds)))
        scrollView.backgroundColor = UIColor.greenColor()
        scrollView.tag = 200
        scrollView.contentSize = CGSizeMake(CGRectGetWidth(scrollView.bounds), CGRectGetHeight(scrollView.bounds) * 1.1)
        scrollView.delegate  = self
        scrollView.contentInset = UIEdgeInsetsMake(yOffset, 0, 0, 0)
        self.view = scrollView
        
        topView = UIView(frame: CGRectMake(0, -yOffset, CGRectGetWidth(UIScreen.mainScreen().bounds), topViewHeight))
        topView!.backgroundColor = UIColor.redColor()
        scrollView.addSubview(topView!)
        
        bottomView = UIView(frame: CGRectMake(0, 40, CGRectGetWidth(UIScreen.mainScreen().bounds), CGRectGetHeight(UIScreen.mainScreen().bounds) - yOffset))
        bottomView!.backgroundColor = UIColor.grayColor()
        scrollView.addSubview(bottomView!);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("contentOffsetY = \(scrollView.contentOffset.y)  origin = \(scrollView.frame.origin.y)\n")
        if(scrollView.contentOffset.y <= -280){
            topView!.frame = CGRectMake(0, scrollView.contentOffset.y, CGRectGetWidth(UIScreen.mainScreen().bounds), CGRectGetHeight(topView!.frame))
        }
    }
}

