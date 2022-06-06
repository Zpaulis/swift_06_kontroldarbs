//
//  FrameController.swift
//  swift_06_kontroldarbs
//
//  Created by Paulis Zabarovskis on 06/06/2022.
//

import Foundation
import UIKit

class FrameController: UIViewController {
    @IBOutlet weak var photoTitle: UINavigationItem!
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var photoDescription: UILabel!
    
    var photoFrame: OnePhoto?
    override func viewDidLoad() {
           super.viewDidLoad()
        self.photoTitle.title = photoFrame?.name
        self.photoDescription.text = photoFrame?.description
        self.photoImage.image = photoFrame?.photo
        self.photoDescription.backgroundColor = UIColor.black.withAlphaComponent(0.4)
    }
        
    
}
