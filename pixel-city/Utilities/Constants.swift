//
//  Constants.swift
//  pixel-city
//
//  Created by kitiwat chanluthin on 8/19/17.
//  Copyright © 2017 kitiwat chanluthin. All rights reserved.
//

import Foundation

let API_KEY = "b291ebfef17cb9125a84537867b64cdd"

func flickrUrl(forApiKey key:String,withAnnotation annotation:DropablePin,numberOfPhotos number:Int,range radiusRange:Int = 2)->String{
    
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(API_KEY)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=\(radiusRange)&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
    
    print(url)
    return url
}


