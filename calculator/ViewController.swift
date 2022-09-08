//
//  ViewController.swift
//  calculator
//
//  Created by Williams, Alexander - Student on 8/29/22.
//

import UIKit

class ViewController: UIViewController {
//Outlets and Variables
    @IBOutlet weak var calculatedOutput: UILabel!
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var userText2: UITextField!
    @IBOutlet weak var easterImage: UIImageView!
    @IBOutlet weak var arrow: UILabel!
    
    public var num1:Float = 0
    public var num2:Float = 0
    public var output:Float = 0
    public var mult:Int = 0
    public var dev:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatedOutput.text = " "
        arrow.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
    }
    
    @IBAction func devide(_ sender: UIButton) {
        dev = 1
        mult = 0
    }
    
    @IBAction func multi(_ sender: UIButton) {
        dev = 0
        mult = 1
    }
    
    
    @IBAction func buttonActive(_ sender: UIButton) {

            var tofloat = (userText.text as! NSString).floatValue
            num1 = tofloat
            var tofloat2 = (userText2.text as! NSString).floatValue
            num2 = tofloat2
            print(num1)
            print(num2)
            
        if dev == 1 {
            output = num1 / num2
            print(output)
            calculatedOutput.text = "\(output)"
        }
        else{
            output = num1 * num2
            print(output)
            calculatedOutput.text = "\(output)"
        }
           
    
        
        
        if output == 64
        {
            easterImage.isHidden = false
            easterImage.image = UIImage(named:"mario64")
        }
        else{
            easterImage.isHidden = true
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        calculatedOutput.text = " "
        easterImage.isHidden = true
    }
    
}

