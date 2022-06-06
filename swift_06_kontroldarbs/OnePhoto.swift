//
//  OnePhoto.swift
//  swift_06_kontroldarbs
//
//  Created by Paulis Zabarovskis on 06/06/2022.
//

import Foundation
import UIKit
class OnePhoto {
    let name: String
    let photo: UIImage?
    let description: String
    
    init (name: String, photoFile: String, description: String) {
        self.name = name
        self.description = description
        self.photo = UIImage.init(named: photoFile)
    }

}
