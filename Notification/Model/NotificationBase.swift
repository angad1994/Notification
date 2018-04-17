

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class NotificationBase {
	public var data : Data?
	public var errors : Array<String>?
	public var messages : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let NotificationBase_list = NotificationBase.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of NotificationBase Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [NotificationBase]
    {
        var models:[NotificationBase] = []
        for item in array
        {
            models.append(NotificationBase(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let NotificationBase = NotificationBase(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: NotificationBase Instance.
*/
	required public init?(dictionary: NSDictionary) {

        if (dictionary["data"] != nil) { data = Data(dictionary: dictionary["data"] as! NSDictionary) }
        //if (dictionary["errors"] != nil) { errors =  errors.modelsFromDictionaryArray(dictionary["errors"] as! NSArray) }
		messages = dictionary["messages"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.data?.dictionaryRepresentation(), forKey: "data")
		dictionary.setValue(self.messages, forKey: "messages")

		return dictionary
	}

}
