//
//  Medication.swift
//  bazingalocal
//
//  Created by Randy May on 2014-09-26.
//  Copyright (c) 2014 pcchack. All rights reserved.
//

import Foundation
import CoreData

class Medication: NSManagedObject {
    @NSManaged var name: NSString
    @NSManaged var notes: NSString
}
