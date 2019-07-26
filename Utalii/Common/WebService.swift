//
//  WebService.swift


import UIKit
import Foundation

class WebService: NSObject {
    
    
    static func getRequest(url: String, requestMethod: String, completion: @escaping (Error?, Dictionary<String, Any>?) -> Void)
    {
        let session = URLSession(configuration: .default)
        let urlString = String(format: url)
        
        var request : URLRequest = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = requestMethod
        request.timeoutInterval = 30
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        
        let dataTask =  session.dataTask(with: request) { (data, response, error) in
            
            guard let httpResponse = response as? HTTPURLResponse, let receivedData = data
                else {
                    print("error: not a valid http response")
                    return
            }
            
            switch (httpResponse.statusCode)
            {
            case 200:
                
                let res = String(data: receivedData, encoding: String.Encoding.ascii)
                print("response is \(String(describing: res))")
                let asciiData = res?.data(using: String.Encoding.utf8, allowLossyConversion: true)
                
                do {
                    let getResponse = try JSONSerialization.jsonObject(with: asciiData!, options: [])
                    completion(nil, getResponse as? [String: Any])
                    print(getResponse)
                    
                } catch {
                    print("error serializing JSON: \(error)")
                    completion(error, nil)
                }
                
            default:
                print("wallet GET request got response \(httpResponse.statusCode)")
            }
        }
        
        dataTask.resume()
    }
    
   static func postRequest(url: String, requestMethod: String, params: Dictionary<String, String>, completion: @escaping (Error?, Dictionary<String, Any>?) -> Void)
    {
        let session = URLSession(configuration: .default)
        let params = params
        let urlString = String(format: url)
        print("url string is \(urlString)")
        
        var request : URLRequest = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = requestMethod
        request.timeoutInterval = 30
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = try! JSONSerialization.data(withJSONObject: params, options: [])
        
       
        
        let dataTask =  session.dataTask(with: request) { (data, response, error) in
            
            guard let httpResponse = response as? HTTPURLResponse, let receivedData = data
                else {
                    print("error: not a valid http response")
                    return
            }
            
            switch (httpResponse.statusCode)
            {
            case 200:
                
                let response = String(data: receivedData, encoding: String.Encoding.utf8)
                print("response is \(String(describing: response))")
                
                do {
                    
                    let getResponse = try JSONSerialization.jsonObject(with: receivedData, options: JSONSerialization.ReadingOptions())
                    completion(nil, getResponse as? [String: Any])
                    print(getResponse)
                    
                } catch {
                    
                    completion(error, nil)
                    print("error serializing JSON: \(error)")
                }
          
            default:
                print("wallet GET request got response \(httpResponse.statusCode)")
            }
        }
        
        dataTask.resume()
    }
    
}
