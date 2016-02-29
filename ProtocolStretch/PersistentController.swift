//
//  PersistentController
//  ProtocolStretch
//
//  Created by Parker Donat on 2/29/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import Foundation

protocol PersistentType {
    
    var key: String { get set }

    var objectAsDictionary: [String: AnyObject] { get }
    
    func save()
    
    func delete()

}

// ANY CLASS that adopts this will have these functions
extension PersistentType {
    
    func save() {
     
        NSUserDefaults.standardUserDefaults().setValue(objectAsDictionary, forKey: key)
        
    }
    
    func delete() {
        
        NSUserDefaults.standardUserDefaults().removeObjectForKey(key)
        
    }
    
}

