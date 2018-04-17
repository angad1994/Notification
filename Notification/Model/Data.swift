

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Data {
	public var current_page : Int?
	public var semiData : Array<SemiData>?
	public var from : Int?
	public var last_page : Int?
	public var next_page_url : String?
	public var path : String?
	public var per_page : Int?
	public var prev_page_url : String?
	public var to : Int?
	public var total : Int?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let data_list = Data.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Data Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Data]
    {
        var models:[Data] = []
        for item in array
        {
            models.append(Data(dictionary: item as! NSDictionary)!)
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

		current_page = dictionary["current_page"] as? Int
        if let dataArray = dictionary["data"] as? NSArray {
            semiData = SemiData.modelsFromDictionaryArray(array: dataArray)
            }
		from = dictionary["from"] as? Int
		last_page = dictionary["last_page"] as? Int
		next_page_url = dictionary["next_page_url"] as? String
		path = dictionary["path"] as? String
		per_page = dictionary["per_page"] as? Int
		prev_page_url = dictionary["prev_page_url"] as? String
		to = dictionary["to"] as? Int
		total = dictionary["total"] as? Int
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.current_page, forKey: "current_page")
		dictionary.setValue(self.from, forKey: "from")
		dictionary.setValue(self.last_page, forKey: "last_page")
		dictionary.setValue(self.next_page_url, forKey: "next_page_url")
		dictionary.setValue(self.path, forKey: "path")
		dictionary.setValue(self.per_page, forKey: "per_page")
		dictionary.setValue(self.prev_page_url, forKey: "prev_page_url")
		dictionary.setValue(self.to, forKey: "to")
		dictionary.setValue(self.total, forKey: "total")

		return dictionary
	}

}
