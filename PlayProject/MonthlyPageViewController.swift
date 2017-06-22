//
//  PageViewController.swift
//  PlayProject
//
//  Created by Senior Node on 22.06.17.
//  Copyright © 2017 Senior Node. All rights reserved.
//

import UIKit

class MonthlyPageViewController: UIPageViewController {
    var i = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        let vc = getViewController(byDate: Date())
        setViewControllers([vc],
                           direction: .forward,
                           animated: true,
                           completion: nil)
    }
    
    func getViewController(byDate:Date) ->  UIViewController{
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "MonthView") as UIViewController
        controller.title = "\(i+=1)"
        return controller
    }
}

extension MonthlyPageViewController:UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return (getViewController(byDate: (Date())))
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
         return (getViewController(byDate: Date()))
    }
}
