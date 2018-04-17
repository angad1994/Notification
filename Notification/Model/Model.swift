

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Model {
	public var name : String?
	public var id : Int?
	public var content : String?
	public var image : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let model_list = Model.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Model Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Model]
    {
        var models:[Model] = []
        for item in array
        {
            models.append(Model(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let model = Model(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Model Instance.
*/
	required public init?(dictionary: NSDictionary) {

		name = dictionary["name"] as? String
		id = dictionary["id"] as? Int
		content = dictionary["content"] as? String
		image = dictionary["image"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.content, forKey: "content")
		dictionary.setValue(self.image, forKey: "image")

		return dictionary
	}

}
