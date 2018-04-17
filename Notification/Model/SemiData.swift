//
//  SemiData.swift
//  Notification
//
//  Created by Macbook Pro on 05/04/18.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import Foundation

public class SemiData {
    
    var subData:SubData?
    
    /**
     Returns an array of models based on given dictionary.
     
     Sample usage:
     let data_list = Data.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
     
     - parameter array:  NSArray from JSON dictionary.
     
     - returns: Array of Data Instances.
     */
    public class func modelsFromDictionaryArray(array:NSArray) -> [SemiData]
    {
        var models:[SemiData] = []
        for item in array
        {
            models.append(SemiData(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    /**
     Constructs the object based on the given dictionary.
     
     Sample usage:
     let data = Data(someDictionaryFromJSON)
     
     - parameter dictionary:  NSDictionary from JSON.
     
     - returns: Data Instance.
     */
    required public init?(dictionary: NSDictionary) {
        
            if let dataDictionary = dictionary["data"] as? NSDictionary {
                subData = SubData.init(dictionary: dataDictionary)
            }
    }

}
