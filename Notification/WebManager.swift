
import UIKit
import Alamofire

class WebManager: NSObject {
//      var profile: SemiData
    
    // A dictionary of parameters to apply to a `URLRequest`.
    public typealias Parameters = [String: Any]
    
    /**
     Make a HTTP  request and returns with either response or failure
     - Parameter url Request URL
     - Parameter parameters Request Parameters
     */
    static func requestHTTPWithBasicAuthorization(url:String,method:HTTPMethod,parameter:Parameters? = nil,header:HTTPHeaders? = nil,encoding:ParameterEncoding = JSONEncoding.default, finished:@escaping (Dictionary<String, Any>)->Void, failed:@escaping (String)->Void) {
        
        let actionURL = url
        
         Alamofire.request(actionURL,
                                           method: method,
                                           parameters: parameter,
                                           encoding: JSONEncoding.default,
                                           headers:header)
            .validate()
            .responseJSON { response in
                switch(response.result) {
                case .success(_):
                    
                    if let data = response.result.value{
                        print(data)
                        finished(data as! Dictionary<String, Any>)
                        
                    }
                    break
                    
                case .failure(_):
                    if let error = response.result.error {
                        failed(error.localizedDescription)
                        print(error)
                    }
                    break
                }
                
       
                
        }
    }
    
   

}


