//
//  settingsViewController.swift
//  Carousel
//
//  Created by Piers Yem on 10/19/15.
//  Copyright (c) 2015 Piers Yem. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var settingsScroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsScroll.contentSize = CGSize(width: 320, height: 740)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func closesettingsButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
