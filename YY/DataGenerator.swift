//
//  DataGenerator.swift
//  YY
//
//  Created by Rekoz on 11/8/14.
//
//

import Foundation
import UIKit
import CoreData

class DataGenerator: NSObject {
    class func generate(moc: NSManagedObjectContext) {
        //UIImage(contentsOfFile: "")
        for i in 0...20 {
            Photo.createInManagedObjectContext(moc, name: "123", photo: UIImagePNGRepresentation(UIImage(contentsOfFile: NSBundle.mainBundle().pathForResource("IMG_2165", ofType: "JPG")!)), voice: "Hello", pitch: 100, locationX: 1, locationY: 2)
        }
    }
}
