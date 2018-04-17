

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Profile {
	public var id : Int?
	public var name : String?
	public var imageUrl : String?
	public var type : String?
	public var tagline : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let profile_list = Profile.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Profile Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Profile]
    {
        var models:[Profile] = []
        for item in array
        {
            models.append(Profile(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let profile = Profile(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Profile Instance.
*/
	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? Int
		name = dictionary["name"] as? String
		imageUrl = dictionary["imageUrl"] as? String
		type = dictionary["type"] as? String
		tagline = dictionary["tagline"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.imageUrl, forKey: "imageUrl")
		dictionary.setValue(self.type, forKey: "type")
		dictionary.setValue(self.tagline, forKey: "tagline")

		return dictionary
	}

}
