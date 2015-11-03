//
//  NSObject+FromClassName.swift
//
//  Created by Damien Romito on 03/11/15.
//  Copyright © 2015 Whyd. All rights reserved.
//

extension NSObject {
    
    class func fromClassName(className : String) -> NSObject {
        let className = NSBundle.mainBundle().infoDictionary!["CFBundleName"] as! String + "." + className
        let aClass = NSClassFromString(className) as! UIViewController.Type
        return aClass.init()
    }
    
}
