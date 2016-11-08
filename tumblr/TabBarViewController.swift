//
//  TabBarViewController.swift
//  tumblr
//
//  Created by Doris Hernandez on 11/3/16.
//  Copyright © 2016 Doris Hernandez. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!

    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let main = UIStoryboard.init(name: "Main", bundle: nil)
        
        homeViewController = main.instantiateViewController(withIdentifier:"HomeViewController")
        searchViewController = main.instantiateViewController(withIdentifier:"SearchViewController")
        composeViewController = main.instantiateViewController(withIdentifier:"ComposeViewController")
        accountViewController = main.instantiateViewController(withIdentifier:"AccountViewController")
        trendingViewController = main.instantiateViewController(withIdentifier:"TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController,composeViewController, accountViewController, trendingViewController]
        
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressTab(_ sender: UIButton) {
        
        
        let previousIndex = selectedIndex
        buttons[previousIndex].isSelected = false
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        
        composeViewController.willMove(toParentViewController: nil)
        composeViewController.view.removeFromSuperview()
        composeViewController.removeFromParentViewController()
        
    
        selectedIndex = sender.tag
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
        
        
        
        
    }

    


}
