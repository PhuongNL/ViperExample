//
//  AddInteractorInterface.swift
//  ViperExample
//
//  Created by PhuongNL on 15/11/2017.
//  Copyright © 2017 Framgia. All rights reserved.
//

protocol AddInteractorInterface: class {
    
    func handleSaveContact(firstName: String?, lastName: String?) -> Contact?
    
}
