//
//  Message.swift
//  SVMaseenger
//
//  Created by Julia Kolbina on 27.07.17.
//  Copyright © 2017 com.SVMaseenger. All rights reserved.
//

import UIKit
import Firebase

class Message: NSObject {
    
    var fromId: String?
    var text: String?
    var timestamp: NSNumber?
    var toId: String?
    
    var imageUrl: String?
    
    func chatPartnerId() -> String? {
        return fromId == FIRAuth.auth()?.currentUser?.uid ? toId : fromId
    }
    
}
