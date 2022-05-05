//
//  Movies&Series.swift
//  IMDb
//
//  Created by Zeynep Baştuğ on 3.05.2022.
//

import Foundation

class MovieAndSeries {
    
    var movieID:Int?
    var movieName:String?
    var releaseDate:String?
    var duration:String?
    var ageLimit:String? //18+ yazıcaz mesela, string mi almalıyız?
    var rating:String?
    var directorName:String?
    var movieImageName:String?
    
    init(movieID:Int, movieName:String, releaseDate:String, duration:String, ageLimit:String, rating:String, directorName:String, movieImageName:String) {
        
        self.movieID = movieID
        self.movieName = movieName
        self.releaseDate = releaseDate
        self.duration = duration
        self.ageLimit = ageLimit
        self.rating = rating
        self.directorName = directorName
        self.movieImageName = movieImageName
       
    }
}
