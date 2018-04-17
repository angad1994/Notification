//
//  SubData.swift
//  Notification
//
//  Created by Macbook Pro on 04/04/18.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import Foundation

public class SubData {
    
    public var action:String?
    public var profile:Profile?
    public var model:Model?
    public var notification:String?
    public var createdAt:String?
/**
 Returns an array of models based on given dictionary.
 
 Sample usage:
 let data_list = Data.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
 
 - parameter array:  NSArray from JSON dictionary.
 
 - returns: Array of Data Instances.
 */
public class func modelsFromDictionaryArray(array:NSArray) -> [SubData]
{
    var models:[SubData] = []
    for item in array
    {
        models.append(SubData(dictionary: item as! NSDictionary)!)
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
    
   
        if let modelDic = dictionary["model"] as? NSDictionary {
            model = Model.init(dictionary: modelDic)
        }
        if let profileDictionary = dictionary["profile"] as? NSDictionary {
            profile = Profile.init(dictionary: profileDictionary)
        }
    action = dictionary["action"] as? String
    createdAt = dictionary["created_at"] as? String
    
}
}

/*
 "data": {
 "action": "like",
 "profile": {
 "id": 370,
 "name": "Pradeep131",
 "imageUrl": "https://s3.ap-south-1.amazonaws.com/fortest.tagtaste.com/images/p/370/wfrGi3liJMBXlWRUXLWB.jpg",
 "type": "profile",
 "tagline": null
 },
 "notification": "Pradeep131 liked a post.",
 "model": {
 "name": "shoutout",
 "id": 731,
 "content": "Nxndjsjsjjejdjjd\n",
 "image": null
 },
 "created_at": "2018-04-04 21:56:56"
 }
 
 */
