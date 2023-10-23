//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Hai Anh on 21/10/2023.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    var post: Post!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.largeTitleDisplayMode = .never
    
        textView.text = post.caption.trimHTMLTags()
        // The caption returned from the Tumblr API includes a few HTML tags at the beginning and end, which look bit odd in the context of our app. Included in the starter project in the Strings+Extensions file is an extension method on string that will strip out any HTML tags from a string. 
                
        if let imagePath = post.photos.first {
            let url = imagePath.originalSize.url
            Nuke.loadImage(with: url, into: imageView)
            }
        }
}
