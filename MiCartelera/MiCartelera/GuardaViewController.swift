//
//  GuardaViewController.swift
//  MiCartelera
//
//  Created by Erinson Andres Romero Terry on 29/11/22.
//

import UIKit

class GuardaViewController: UIViewController {
    //
    //  GuardadoViewController.swift
    //  MiCartelera
    //
    //  Created by Erinson Andres Romero Terry on 28/11/22.
        
        
    @IBOutlet weak var guardaCollectionView: UICollectionView!
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guardaCollectionView.delegate = self
        guardaCollectionView.dataSource = self
        
    }
}

extension GuardaViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 13
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = guardaCollectionView.dequeueReusableCell(withReuseIdentifier: "GuardadoCollectionViewCell", for: indexPath) as! GuardadoCollectionViewCell
        return cell
            
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let second = storyboard?.instantiateViewController(withIdentifier: "mostrandoIdentifier") as! MostrandoViewController
        second.modalPresentationStyle = .fullScreen
    }
    
}
