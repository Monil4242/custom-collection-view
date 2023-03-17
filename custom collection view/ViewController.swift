//
//  ViewController.swift
//  custom collection view
//
//  Created by monil sojitra on 14/02/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var photo = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10")]
    
    var name = ["juicer 1","juicer 2","juicer 3","juicer 4","juicer 5","juicer 6","juicer 7","juicer 8","juicer 9","juicer 10"]
    
    var select = -1
    var arr = Array<String>()
    
    @IBOutlet weak var cv: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.img.image = photo[indexPath.row]
        cell.lb1.text = name[indexPath.row]
        //cell.selectButton.image = UIImage(systemName: "circle.fill")
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 10
        
        if select == indexPath.row{
            cell.selectButton.image = UIImage(systemName: "circle.fill")
        }
        else
        {
            cell.selectButton.image = UIImage(systemName: "circle")
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        select = indexPath.row
        cv.reloadData()
        
        
        
    }
    
}
