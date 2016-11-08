//
//  ComposeViewController.swift
//  tumblr
//
//  Created by Doris Hernandez on 11/3/16.
//  Copyright © 2016 Doris Hernandez. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
        var buttonsArray: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonsArray = [textButton, photoButton, quoteButton, linkButton, chatButton, videoButton]

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        textButton.center.y = textButton.center.y + 440
        photoButton.center.y = photoButton.center.y + 440
        quoteButton.center.y = quoteButton.center.y + 440
        linkButton.center.y = linkButton.center.y + 290
        chatButton.center.y = chatButton.center.y + 290
        videoButton.center.y = videoButton.center.y + 290

        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        UIView.animate(withDuration: 0.2,delay:0.2,animations: {

            self.textButton.center.y = self.textButton.center.y - 440
        })
        

        UIView.animate(withDuration: 0.2, animations: {

            self.photoButton.center.y = self.photoButton.center.y - 440
        })
        
   
        UIView.animate(withDuration: 0.2,delay: 0.2, animations: {
        
            self.quoteButton.center.y = self.quoteButton.center.y - 440
        })
        
    
        UIView.animate(withDuration: 0.2,delay: 0.2, animations: {
  
            self.linkButton.center.y = self.linkButton.center.y - 290
        })
        

        UIView.animate(withDuration: 0.2,delay : 0.1, animations: {

            self.chatButton.center.y = self.chatButton.center.y - 290
        })
        
 
        UIView.animate(withDuration: 0.2,delay: 0.2, animations: {
         
            self.videoButton.center.y = self.videoButton.center.y - 290
        })
        
        
        

    }
    
    
    
    @IBAction func didPressDismiss(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
        
    }


}
