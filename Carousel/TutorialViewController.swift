//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Piers Yem on 10/18/15.
//  Copyright (c) 2015 Piers Yem. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var tutorialscrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialscrollView.contentSize = CGSize(width: 1300, height: 568)
        
        tutorialscrollView.delegate = self


        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        //println(page)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func timelineButton(sender: AnyObject) {
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
