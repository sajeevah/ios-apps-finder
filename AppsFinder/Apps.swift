//
//  Apps.swift
//  AppsFinder
//
//  Created by Admin on 10/4/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import UIKit

class Apps: Codable {
    let resultCount: Int
    let results: [App]
    
    init(resultCount: Int, results: [App]){
        self.resultCount = resultCount
        self.results = results
    }
}


class App: Codable {
    let screenshotUrls : [String]
    let ipadScreenshotUrls : [String]
    let appletvScreenshotUrls : [String]
    let artworkUrl60 : String
    let artworkUrl512 : String
    let artworkUrl100 : String
    let supportedDevices : [String]
    let advisories : [String]
    let isGameCenterEnabled : Bool
    let kind : String
    let features : [String]
    //    let averageUserRatingForCurrentVersion : Double
    let trackCensoredName : String
    let languageCodesISO2A : [String]
    let fileSizeBytes : String
    //    let sellerUrl : String
    let contentAdvisoryRating : String
    //    let userRatingCountForCurrentVersion : Int
    let trackViewUrl : String
    let trackContentRating : String
    //    let releaseNotes : String
    let currentVersionReleaseDate : String
    let minimumOsVersion : String
    let trackId : Int
    let trackName : String
    //    let formattedPrice : String
    let sellerName : String
    let isVppDeviceBasedLicensingEnabled : Bool
    let releaseDate : String
    let primaryGenreName : String
    let primaryGenreId : Int
    let wrapperType : String
    let version : String
    let description : String
    
    init(screenshotUrls : [String], ipadScreenshotUrls : [String], appletvScreenshotUrls : [String], artworkUrl60 : String, artworkUrl512 : String, artworkUrl100 : String, supportedDevices : [String], advisories : [String], isGameCenterEnabled : Bool, kind : String, features : [String],  trackCensoredName : String, languageCodesISO2A : [String], fileSizeBytes : String, contentAdvisoryRating : String, trackViewUrl : String, trackContentRating : String, currentVersionReleaseDate : String, minimumOsVersion : String, trackId : Int, trackName : String, sellerName : String, isVppDeviceBasedLicensingEnabled : Bool, releaseDate : String, primaryGenreName : String, primaryGenreId : Int, wrapperType : String, version : String, description : String){
        
        self.screenshotUrls = screenshotUrls
        self.ipadScreenshotUrls = ipadScreenshotUrls
        self.appletvScreenshotUrls = appletvScreenshotUrls
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl512 = artworkUrl512
        self.artworkUrl100 = artworkUrl100
        self.supportedDevices = supportedDevices
        self.advisories = advisories
        self.isGameCenterEnabled = isGameCenterEnabled
        self.kind = kind
        self.features = features
        //        self.averageUserRatingForCurrentVersion = averageUserRatingForCurrentVersion
        self.trackCensoredName = trackCensoredName
        self.languageCodesISO2A = languageCodesISO2A
        self.fileSizeBytes = fileSizeBytes
        //        self.sellerUrl = sellerUrl
        self.contentAdvisoryRating = contentAdvisoryRating
        //        self.userRatingCountForCurrentVersion = userRatingCountForCurrentVersion
        self.trackViewUrl = trackViewUrl
        self.trackContentRating = trackContentRating
        //        self.releaseNotes = releaseNotes
        self.currentVersionReleaseDate = currentVersionReleaseDate
        self.minimumOsVersion = minimumOsVersion
        self.trackId = trackId
        self.trackName = trackName
        //        self.formattedPrice = formattedPrice
        self.sellerName = sellerName
        self.isVppDeviceBasedLicensingEnabled = isVppDeviceBasedLicensingEnabled
        self.releaseDate = releaseDate
        self.primaryGenreName = primaryGenreName
        self.primaryGenreId = primaryGenreId
        self.wrapperType = wrapperType
        self.version = version
        self.description = description
    }
}

