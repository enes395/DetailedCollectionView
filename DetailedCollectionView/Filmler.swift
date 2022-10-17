//
//  Filmler.swift
//  DetailedCollectionView
//
//  Created by Muhammed Enes Kılıçlı on 17.10.2022.
//

import Foundation


class Filmler {
     
    
    var filmId : Int?
    var filmAd : String?
    var filmResimadi : String?
    var filmYonetmenAdi : String?
    var filmFiyat : Int?
    
    init(filmId: Int, filmAd: String, filmResimadi: String, filmYonetmenAdi: String, filmFiyat: Int) {
       self.filmId = filmId
       self.filmAd = filmAd
       self.filmResimadi = filmResimadi
       self.filmYonetmenAdi = filmYonetmenAdi
       self.filmFiyat = filmFiyat
   }

    
}
