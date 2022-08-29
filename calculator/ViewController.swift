//
//  ViewController.swift
//  calculator
//
//  Created by Williams, Alexander - Student on 8/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatedOutput: UILabel!
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var userText2: UITextField!
    

    @IBOutlet weak var easterImage: UIImageView!
    
    public var num1:Float = 0
    public var num2:Float = 0
    public var output:Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonActive(_ sender: UIButton) {
        var tofloat = (userText.text as! NSString).floatValue
        num1 = tofloat
        var tofloat2 = (userText2.text as! NSString).floatValue
        num2 = tofloat2
        print(num1)
        print(num2)
      
        output = num1 * num2
        
        print(output)
        
        calculatedOutput.text = "\(output)"
        
        
        
        if output == 64
        {
            easterImage.image = UIImage(named:"mario64")
        }
    }
    

}

