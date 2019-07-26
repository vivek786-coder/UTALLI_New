//
//  Constant.swift


import UIKit

struct Constant {
    
    static let baseUrl    = "http://3.13.3.42:8000/api/v1/"
    static let getMethod  = "GET"
    static let postMethod = "POST"
    
    //Login API
    static let login              = "users/login"
    static let signUp             = "guides/guideregister/login"
    static let sendOtpToMobileNumber = "users/forgetPassword"
    static let otpVerification    = "users/resetPassword"
    static let resetPassword      = ""
}
