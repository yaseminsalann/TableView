//
//  ViewController.swift
//  tableViewExample
//
//  Created by Yasemin salan on 28.01.2025.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
       
        landmarkNames.append("Collosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonhenge")
        landmarkNames.append("Tac Mahal")
        
        
        landmarkImages.append(UIImage(named: "colosseum")!)
        landmarkImages.append(UIImage(named: "greatwall")!)
        landmarkImages.append(UIImage(named: "kremlin")!)
        landmarkImages.append(UIImage(named: "Stonehenge")!)
        landmarkImages.append(UIImage(named: "tacmahal")!)
        
        
        
    }
    // MARK: - UITableViewDataSource Methods

        // Kaç satır olacağını belirler
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    // Her bir hücreyi nasıl oluşturacağını belirler
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text! = "TableView"
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        content.image = landmarkImages[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    // MARK: - UITableViewDelegate Methods

    // Hücre seçimi durumunda yapılacak işlemi belirler
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(landmarkNames[indexPath.row]) seçildi")
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    // Segue'ye hazırlık işlemleri burada yapılır
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
            
            //bu yömtem kullanılırsa chosenLandmarkName  ve chosenLandmarkImage değişkenleri kullanılmasına gerek yok
            /*if let selectedIndexPath = tableView.indexPathForSelectedRow {
                destinationVC.selectedLandmarkName = landmarkNames[selectedIndexPath.row]
                destinationVC.selectedLandmarkImage = landmarkImages[selectedIndexPath.row]
            }*/
        }
    }
    
    /*fonksiyonu, bir UITableView üzerinde düzenleme (silme, ekleme vb.) işlemlerinin yapılmasını sağlamak için kullanılan bir UITableViewDataSource protokol yöntemidir.
    Bu fonksiyon genellikle bir satırı silme ya da ekleme işlemlerini uygulamak için kullanılır. Kullanıcı bir satır üzerinde kaydırma (swipe) hareketi yaptığında veya düzenleme modundayken bu fonksiyon tetiklenir.*/
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            //veriler değiştiğini söylemek ve görünümü güncellenmesi için
            //tableView.reloadData()
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

