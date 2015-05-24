//
//  ViewController.swift
//  7.13_UIScrollview(2)
//
//  Created by 王卓 on 15/4/17.
//  Copyright (c) 2015年 王卓. All rights reserved.
//

import UIKit

class MyViewController:UIViewController {
    var number:Int!
    let colorMap=[
        1:UIColor.blackColor(),
        2:UIColor.redColor(),
        3:UIColor.blueColor()
    ]
    //初始化
    init(number initNumber:Int){
        self.number=initNumber
        super.init(nibName:nil,bundle:nil)
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        var numberLabel=UILabel(frame: CGRectMake(0, 0, 100, 00))
        numberLabel.center=self.view.center
        numberLabel.text="page:\(number)"
        numberLabel.textColor=UIColor.redColor()
        self.view.addSubview(numberLabel)
        self.view.backgroundColor=colorMap[number]
    }

}







class ViewController: UIViewController {
    
    
    let pages=3
        let height=360
        let width=320
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var scrollView=UIScrollView()
        scrollView.frame=self.view.bounds
        scrollView.contentSize=CGSizeMake(CGFloat(width*pages), CGFloat(height))
        scrollView.pagingEnabled=true
        scrollView.showsHorizontalScrollIndicator=false
        scrollView.showsVerticalScrollIndicator=false
        scrollView.scrollsToTop=false
        
        for i in 0...pages{
            var myViewCortoller = MyViewController(number:(i+1));
            myViewCortoller.view.frame=CGRectMake(CGFloat(width*i), CGFloat(0), CGFloat(width), CGFloat(height))
            scrollView.addSubview(myViewCortoller.view)
        }
        
        self.view.addSubview(scrollView)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

