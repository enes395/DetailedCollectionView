//
//  DetayVC.swift
//  DetailedCollectionView
//
//  Created by Muhammed Enes Kılıçlı on 17.10.2022.
//

import UIKit

class DetayVC: UIViewController {
    
    @IBOutlet weak var filmAdiLabel: UILabel!
    @IBOutlet weak var filmYonetmenAdiLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var film : Filmler?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let film = film {
            filmAdiLabel.text = film.filmAd
            filmYonetmenAdiLabel.text = film.filmYonetmenAdi
            filmImageView.image = UIImage(named: film.filmResimadi!)
            filmFiyatLabel.text = "\(film.filmFiyat!) ₺"
        }
        
    }
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        
        if let film = film {
            print("\(film.filmAd!) \(film.filmFiyat!) ₺ fiyatla sepete eklendi.")
        }
        
    }
    
    
}
