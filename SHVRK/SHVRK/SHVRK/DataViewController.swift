//
//  DataViewController.swift
//  SHVRK
//
//  Created by Monica on 10/20/15.
//  Copyright © 2015 Monica. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!;
    let dataObject: String = "SHVRK";

    @IBOutlet weak var thepicture: UIImageView!;
    
    // these are the variables bound to the DATA for the
    // two text entry fields on the screen:
    @IBOutlet var phoneNumber: UITextField!;
    @IBOutlet var genderfield: UITextField!;
    
    // this shit fires when we hit the button:
    @IBAction func buttonwaspressed(sender: AnyObject) {
        
        // feel good move:
        print("i clicked the button!");
        
        // get the text inside the two text entry fields:
        let phonenumber: String = phoneNumber.text!;
        let message: String = genderfield.text!;
        
        // another feel good move:
        print("phone number is: " + phonenumber);
        print("message is: " + message);
        
        // insert crap here to talk to database and make a new user
        
        // this is the sender field:
        let sender: String = "luke";
   
        // this is our url
        let urltext: String = "http://sites.bxmc.poly.edu/~lukedubois/teaching/testphp/shvrk.php?number="+phonenumber+"&sender="+sender+"&message="+message;

        // longest method ever (fix the fucking spaces):
        let realurltext : String = urltext.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!;
        
        // another feel good move:
        print(realurltext); // fuck these people
        
        //
        // this is the internet:
        //
        
        // this is a full URL (including other jazz besides the url text):
        let url: NSURL = NSURL(string: realurltext)!
        
        // this turns everything into a request:
        let rqst:NSMutableURLRequest = NSMutableURLRequest(URL:url)
        
        // this actually sends the request:
        NSURLConnection.sendAsynchronousRequest(rqst, queue: NSOperationQueue.mainQueue()) {
            (response, data, error) in
            // convert the data from the http response to a string and print it:
            let realstuff = NSString(data: data!, encoding: NSUTF8StringEncoding)!;
            print(realstuff);
        }

        
    }
    override func viewDidLoad() {
        // this is the function that runs when it gets the view happening
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        
        self.dataLabel!.text = dataObject;

        let image = UIImage(named: "shvrk-behance1.png");
        thepicture.image = image;

        
    }


}

