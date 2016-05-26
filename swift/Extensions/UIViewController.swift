//
//  UIViewController.swift
//  abavisg-lib
//
//  Created by Georgios Ampavis
//  Copyright © 2016 Georgios Ampavis. All rights reserved.
//

import UIKit

public extension UIViewController {

	public class func pushToViewController(parentController: UIViewController) {
		let controller = viewControllerWithID(self.classForCoder().description().componentsSeparatedByString(".").last!)
		parentController.navigationController?.pushViewController(controller, animated: true)
	}

	public class func addModallyToViewController(parentController: UIViewController) {
		let controller = viewControllerWithID(self.classForCoder().description().componentsSeparatedByString(".").last!)
		let navigationController = UINavigationController.init(rootViewController: controller)
		parentController.presentViewController(navigationController, animated: true) {

		}
	}
}
