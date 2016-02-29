//
//  PersistenceController.swift
//  ProtocolStretch
//
//  Created by James Pacheco on 2/28/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import Foundation

protocol PersistentType {
    var key: String { get set }
    var objectAsDictionary: [String: AnyObject] { get }
    
    func save()
    func delete()
    
}

extension PersistentType {
    func save() {
        NSUserDefaults.standardUserDefaults().setValue(objectAsDictionary, forKey: key)
    }
    
    func delete() {
        NSUserDefaults.standardUserDefaults().removeObjectForKey(key)
    }
}