//
//  PhotoViewController.swift
//  swift_06_kontroldarbs
//
//  Created by Paulis Zabarovskis on 05/06/2022.
//

import Foundation
import UIKit

// Fotogrāfiju galeriju attēlošanai izmantot UIPageViewController.
class PhotoViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        let frameController: FrameController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "FrameControllerIdentifier")
        frameController.photoFrame = photos.first
        let frameControllers = [frameController]
        
        setViewControllers(frameControllers, direction: .forward, animated: true, completion: nil)
    }
    let photos = storeData()
}

extension PhotoViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentPhoto = (viewController as! FrameController).photoFrame
        let currentIndex = photos.firstIndex(of: currentPhoto!)
        
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
        let currentIndex = photos.firstIndex(of: currentPhoto!)
        
        if currentIndex! > 0 {
            let frameController: FrameController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(identifier: "FrameControllerIdentifier")
            frameController.photoFrame = photos[currentIndex! - 1]
            return frameController
        }
        return nil
    }
 // Attēlot lappušu navigācijas “punktiņus”.
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        if let pageCtrl = self.pageControl() {
            pageCtrl.pageIndicatorTintColor = UIColor.white
            pageCtrl.currentPageIndicatorTintColor = UIColor.red
        }
        return self.photos.count
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let currentPhoto = (self.viewControllers?.first as! FrameController).photoFrame,
              let currentIndex = self.photos.firstIndex(of: currentPhoto) else {
            return 0
        }
        return currentIndex
    }
  //  Release any additional memory used by your view controller.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension UIPageViewController {
    func pageControl() -> UIPageControl? {
        // Vai view ir ieladets
        guard self.isViewLoaded else {
            return nil
        }
        var pageCtrl:UIPageControl? = nil
        for view in self.view.subviews {
            if let p = view as? UIPageControl {
                pageCtrl = p
                // Found. Format it.
                pageCtrl?.backgroundStyle = .automatic
                pageCtrl?.backgroundColor = UIColor.black
                break
            }
        }
        return pageCtrl
    }
}
