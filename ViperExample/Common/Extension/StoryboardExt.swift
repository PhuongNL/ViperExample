//
//  StoryboardExt.swift
//  ViperExample
//
//  Created by Phuong Nguyen on 11/30/17.
//  Copyright © 2017 Phuong Nguyen. All rights reserved.
//

import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension UIViewController: StoryboardIdentifiable {}

extension UIStoryboard {
    
    // The uniform place where we state all the storyboard we have in our application
    enum Storyboard: String {
        case main
        case loading
        
        var filename: String {
            return rawValue.capitalized
        }
    }
    
    // MARK: - Convenience Initializers
    convenience init(_ storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.filename, bundle: bundle)
    }
    
    // MARK: - Class Functions
    class func storyboard(_ storyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: storyboard.filename, bundle: bundle)
    }
    
    // MARK: - View Controller Instantiation from Generics
    func instantiateViewController<T: UIViewController>(withIdentifier identifier: String? = nil) -> T {
        let identifierVc = identifier ?? T.storyboardIdentifier
        guard let viewController = self.instantiateViewController(withIdentifier: identifierVc) as? T else {
            fatalError("Couldn't instantiate view controller with identifier \(identifierVc) ")
        }
        return viewController
    }
    
}
