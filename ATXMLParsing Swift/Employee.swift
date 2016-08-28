//
//  Employee.swift
//  ATXMLParsing
//
//  Created by Felix ITs 01 on 28/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

import UIKit

class Employee: NSObject {
    
    var emp_id : String = String()
    var name : String = String()
    var designation : String = String()
    var contact : String = String()
    
    override init() {
        self.emp_id = "000"
        self.name = "Not Available"
        self.designation = "Not Available"
        self.contact = "Not Available"
    }
    
    init(emp_id : String, name : String, designation: String, contact: String) {
        self.emp_id = emp_id
        self.name = name
        self.designation = designation
        self.contact = contact
    }

}
