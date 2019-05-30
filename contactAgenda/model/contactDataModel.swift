//
//  contactDataModel.swift
//
//
//  Created by zadkiel de jesus on 29/05/2019.
//

import Foundation
import UIKit

class ContactDataModel {
    
    //model variables
    
    var name = ""
    var company = ""
    var phoneHome = 0
    var phoneWork = 0
    var address = ""
    var birthdate = ""
    var email = ""
    
    //turns a condition code into the icon of the contact condition
    
    func updateFavoriteIcon (condition: Bool) -> String {
        
        switch (condition) {
        case true:
            return "Favorite — True"
        default:
            return "Favorite — False"
        }
    }
    
}
