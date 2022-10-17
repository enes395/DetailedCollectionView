//
//  FilmlerCollectionViewCell.swift
//  DetailedCollectionView
//
//  Created by Muhammed Enes Kılıçlı on 17.10.2022.
//

import UIKit

protocol HucreProtocol {
    func buttonTiklandi(indexPath : IndexPath)
}



class FilmCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var filmAdLabel: UILabel!
    
    @IBOutlet weak var filmImageView: UIImageView!
    
    @IBOutlet weak var filmFiyatLable: UILabel!
    
    var hucreProtocol : HucreProtocol?
    var indexPath : IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        
        hucreProtocol?.buttonTiklandi(indexPath: indexPath!)
        
    }
    
    
}
