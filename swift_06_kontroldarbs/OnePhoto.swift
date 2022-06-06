//
//  OnePhoto.swift
//  swift_06_kontroldarbs
//
//  Created by Paulis Zabarovskis on 06/06/2022.
//

import Foundation
import UIKit
// Izveidot datu modeli kā masīvu. Datu elementam izveidot atsevišķu klasi.

class OnePhoto: Equatable {
    static func == (lhs: OnePhoto, rhs: OnePhoto) -> Bool {
        return lhs.name == rhs.name
    }
    
    let name: String
    let photo: UIImage?
    let description: String
    
    init (name: String, photoFile: String, description: String) {
        self.name = name
        self.description = description
        self.photo = UIImage.init(named: photoFile)
    }

}
