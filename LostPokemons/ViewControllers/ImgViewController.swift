//
//  ImgViewController.swift
//  LostPokemons
//
//  Created by Anton Kaznacheev on 19.05.2022.
//

import UIKit

class ImgViewController: UIViewController {

    @IBOutlet weak var Images: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchImages()
    }
// MARK:
    private func fetchImages(){
        guard let url = URL(string: "https://applelives.com/wp-content/uploads/2016/03/iPhone-SE-11.jpeg") else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, let response = response else {
                print(error?.localizedDescription ?? "No error desk")
                return
            }
            DispatchQueue.main.async {
                 print(response)
                guard let images = UIImage(data: data) else {return}
                self.Images.image = images
            }
           
        }.resume()
    }
    
}
