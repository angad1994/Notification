//
//  Server.swift
//  TagTaste
//
//  Created by upandrarai on 12/12/17.
//  Copyright © 2017 TagTaste. All rights reserved.
//

//import Foundation
//import Alamofire
//import SwiftyJSON
//
//class Server {
//
//
//    let baseURL = "http://139.59.59.78:8080/api/"  // testing url
//   //let baseURL = "http://api.tagtaste.com/api/"  // production url
//
//
//    var logoutURL = ""
//    var loginURL = ""
//    var profileURL = ""
//    var verifyInviteCodeURL = ""
//    var registerEmail = ""
//    var phoneVerify = ""
//    var updateURL = ""
//    var autocompleteAPI = ""
//    var followPeopleAPI = ""
//    var searchAPI = ""
//    var followPeople = ""
//    var unFollowPeople = ""
//    var followCompanies = ""
//    var newsletters = ""
//    var requestOTP = ""
//    var socialAPI = ""
//    var feedAPI = ""
//    var collabFeedAPI = ""
//    var jobFeedAPI = ""
//    var fcmAPI = ""
//    var sharedLikeAPI = ""
//    var markNotificationsRead = ""
//    var shoutout = ""
//    var postPhoto = ""
//    var updateProfileImage = ""
//    var getCommment = ""
//    var getLikesList = ""
//    var getTagList = ""
//    var getCollabById = ""
//
//    init() {
//        logoutURL = baseURL + "logout"
//        loginURL = baseURL + "login"
//        profileURL = baseURL + "profile/"
//        verifyInviteCodeURL = baseURL + "verifyInviteCode"
//        registerEmail = baseURL + "user/register"
//        phoneVerify = baseURL + "profile/phoneVerify"
//        updateURL = baseURL + "profile/update/"
//        autocompleteAPI = baseURL + "autocomplete/filter/"
//        followPeopleAPI = baseURL + "people/onboarding/"
//        searchAPI = baseURL + "search"
//        followPeople = baseURL + "profile/follow"
//        unFollowPeople = baseURL + "profile/unfollow"
//        followCompanies = baseURL + "profiles/update/companies/"
//        newsletters = baseURL + "newsletters"
//        requestOTP = baseURL + "profile/requestOtp"
//        socialAPI = "http://api.tagtaste.com/social/login/"
//        feedAPI = baseURL + "feed/"
//        collabFeedAPI = baseURL + "collaborate"
//        jobFeedAPI = baseURL + "jobs"
//        fcmAPI = baseURL + "user/fcmToken"
//        sharedLikeAPI = baseURL + "share/"
//        markNotificationsRead = baseURL + "notifications/markAllAsRead"
//        shoutout = baseURL+"shoutout"
//        postPhoto = baseURL+"profiles/"
//        updateProfileImage = baseURL+"profile/"
//        getCommment = baseURL+"comments/"
//        getLikesList = baseURL+"peopleLiked/"
//        getTagList = baseURL+"profile/tagging?term="
//        getCollabById = baseURL+"collaborate"
//    }
//
//    static func callAPI(_ url: URL, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders?, encoding: ParameterEncoding = JSONEncoding.default, completion: @escaping (JSON?, Error?) -> ())  {
//        var jsonResult: JSON? = nil
//        var errorResult: Error? = nil
//        Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers).validate().responseJSON { (response) in
//            switch response.result {
//            case .success(let value):
//                let json = JSON(value)
//                jsonResult = json
//            case .failure(let error):
//                errorResult = error
//            }
//            completion(jsonResult, errorResult)
//        }
//
//    }
//
//
//
//}

