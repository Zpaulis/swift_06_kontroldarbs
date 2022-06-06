//
//  PhotoViewController.swift
//  swift_06_kontroldarbs
//
//  Created by Paulis Zabarovskis on 05/06/2022.
//

import Foundation
import UIKit

class PhotoViewController: UIPageViewController, UIPageViewControllerDataSource {

    override func viewDidLoad() {
           super.viewDidLoad()
        self.dataSource = self
        let frameController: FrameController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "FrameControllerIdentifier")
        frameController.photoFrame = photos.first
        let frameControllers = [frameController]

 
        setViewControllers(frameControllers, direction: .forward, animated: true, completion: nil)
    }
    let photos = storeData()
    
    //[UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "FrameControllerIdentifier")]
    
    // MARK: UIPageViewControllerDataSource
       func pageViewController(_ pageViewController: UIPageViewController,
           viewControllerAfter viewController: UIViewController) -> UIViewController? {
           let currentPhoto = (viewController as! FrameController).photoFrame
           let currentIndex = photos.firstIndex{$0 === currentPhoto}
           
           if currentIndex! < photos.count - 1 {
               let frameController: FrameController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "FrameControllerIdentifier")
               frameController.photoFrame = photos[currentIndex! + 1]
               return frameController
           }
           
               return nil
       }
       
       func pageViewController(_ pageViewController: UIPageViewController,
           viewControllerBefore viewController: UIViewController) -> UIViewController? {
           let currentPhoto = (viewController as! FrameController).photoFrame
           let currentIndex = photos.firstIndex{$0 === currentPhoto}
           
           if currentIndex! > 0 {
               let frameController: FrameController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "FrameControllerIdentifier")
               frameController.photoFrame = photos[currentIndex! - 1]
               return frameController
           }
              return nil
       }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
