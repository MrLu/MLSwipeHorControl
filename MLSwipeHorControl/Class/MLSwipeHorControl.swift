//
//  MLSwipeHorControl.swift
//  MLSwipeHorControl
//
//  Created by Mrlu on 2018/5/17.
//  Copyright © 2018 Mrlu. All rights reserved.
//

import UIKit

@objc protocol MLSwipeHorControlProtocol:NSObjectProtocol {
    @objc optional func swipeHorControl(swipeHorControl:MLSwipeHorControl, willDisplay:UIView)
}

protocol MLSwipeHorControlDataSource:NSObjectProtocol {
    func swipeHorControl(swipeHorControl:MLSwipeHorControl, for index:NSInteger) -> UIView
}

class MLSwipeHorControl: UIView {
    
    var delegate:MLSwipeHorControlProtocol?
    var dataSource:MLSwipeHorControlProtocol?
    
    var index:NSInteger = 0
    
    var containView:UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


