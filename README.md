# NSObject-FromClassName
A swift extension, to get quickly an NSObject from its classname


```swift 
extension NSObject {
    
    class func fromClassName(className : String) -> NSObject {
        let className = NSBundle.mainBundle().infoDictionary!["CFBundleName"] as! String + "." + className
        let aClass = NSClassFromString(className) as! UIViewController.Type
        return aClass.init()
    }
    
}

```
**Exemple with a viewController I get from a string array**

```swift
override func viewDidLoad() {
    super.viewDidLoad()

    let controllers = ["SettingsViewController", "ProfileViewController", "PlayerViewController"]
    self.presentController(controllers.firstObject as! String)

}

func presentController(controllerName : String){
	let nav = UINavigationController(rootViewController: NSObject.fromClassName(controllerName) as! UIViewController )
    nav.navigationBar.translucent = false
    self.navigationController?.presentViewController(nav, animated: true, completion: nil)
}
```
