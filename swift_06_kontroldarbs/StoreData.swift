//
//  StoreData.swift
//  swift_06_kontroldarbs
//
//  Created by Paulis Zabarovskis on 06/06/2022.
//

import Foundation
func storeData() -> [OnePhoto] {
     let photos = [OnePhoto(name: "Pirmā bilde",
                           photoFile: "photo01",
                           description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                 OnePhoto(name: "Otrā bilde",
                           photoFile: "photo02",
                           description: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                  OnePhoto(name: "Trešā bilde",
                           photoFile: "photo03",
                           description: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                  OnePhoto(name: "Ceturtā bilde",
                           photoFile: "photo04",
                           description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                  OnePhoto(name: "Piektā bilde",
                           photoFile: "photo05",
                           description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  OnePhoto(name: "Sestā bilde",
                           photoFile: "photo06",
                           description: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                  OnePhoto(name: "Septītā bilde",
                           photoFile: "photo07",
                           description: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                  OnePhoto(name: "Astotā bilde",
                           photoFile: "photo08",
                           description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                  OnePhoto(name: "Devītā bilde",
                           photoFile: "photo09",
                           description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  OnePhoto(name: "Desmitā bilde",
                           photoFile: "photo10",
                           description: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")]
    return photos
}
