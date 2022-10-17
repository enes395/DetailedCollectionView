//
//  ViewController.swift
//  DetailedCollectionView
//
//  Created by Muhammed Enes Kılıçlı on 17.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let film1 = Filmler(filmId: 1, filmAd: "Django", filmResimadi: "django", filmYonetmenAdi: "Quentin Tarantino", filmFiyat: 15)
        let film2 = Filmler(filmId: 2, filmAd: "Inception", filmResimadi: "inception", filmYonetmenAdi: "Chrsitopher Nolan", filmFiyat: 10)
        let film3 = Filmler(filmId: 3, filmAd: "Interstellar", filmResimadi: "interstellar", filmYonetmenAdi: "Chrsitopher Nolan", filmFiyat: 15)
        let film4 = Filmler(filmId: 4, filmAd: "Anadoluda", filmResimadi: "anadoluda", filmYonetmenAdi: "Nuri Bilge Ceylan", filmFiyat: 32)
        let film5 = Filmler(filmId: 5, filmAd: "The Hateful Eight", filmResimadi: "thehatefuleight", filmYonetmenAdi: "Quentin Tarantino", filmFiyat: 12)
        let film6 = Filmler(filmId: 6, filmAd: "The Pianist", filmResimadi: "thepianist", filmYonetmenAdi: "Roman Polanski", filmFiyat: 7)

        filmlerListesi.append(film1)
        filmlerListesi.append(film2)
        filmlerListesi.append(film3)
        filmlerListesi.append(film4)
        filmlerListesi.append(film5)
        filmlerListesi.append(film6)
        filmlerListesi.append(film1)
        filmlerListesi.append(film2)
        filmlerListesi.append(film3)
        filmlerListesi.append(film4)
        filmlerListesi.append(film5)
        filmlerListesi.append(film6)
        filmlerListesi.append(film1)
        filmlerListesi.append(film2)
        filmlerListesi.append(film3)
        filmlerListesi.append(film4)
        filmlerListesi.append(film5)
        filmlerListesi.append(film6)
        
        filmlerCollectionView.delegate = self
        filmlerCollectionView.dataSource = self
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        tasarim.scrollDirection = .horizontal
        
        let ekranGenisligi = UIScreen.main.bounds.width
        let hucreGenisligi = (ekranGenisligi - 30) / 2
        tasarim.itemSize = CGSize(width: hucreGenisligi, height: hucreGenisligi * 1.7)
        filmlerCollectionView.collectionViewLayout = tasarim
        
        
        
    }
    
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, HucreProtocol {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let film = filmlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmCollectionViewCell
        
        cell.filmAdLabel.text = film.filmAd
        cell.filmImageView.image = UIImage(named: film.filmResimadi!)
        cell.filmFiyatLable.text = "\(film.filmFiyat!) ₺ "
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
        
    }
    
    
    func buttonTiklandi(indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmAd)  sepete eklendi.")

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: film)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let film = sender as? Filmler {
                let gidilecekVC = segue.destination as! DetayVC
                gidilecekVC.film = film
            }
        }
    }
    
    
}
