//
//  IntroViewController.swift
//  Carousel
//
//  Created by Piers Yem on 10/13/15.
//  Copyright (c) 2015 Piers Yem. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    @IBOutlet weak var scrollView1: UIScrollView!
    @IBOutlet weak var introimageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView1.contentSize = introimageView.image!.size
        //scrollView1.contentSize = CGSize.init(width: 320, height: 1136)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
