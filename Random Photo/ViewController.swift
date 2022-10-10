//
//  ContentView.swift
//  Random Photo
//

//issue actually getting images to show. I only see default white background
import UIKit


class ViewController: UIViewController {
    private let imageView: UIImageView = { let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .blue
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        imageView.center = view.center
        getRandomPhoto()
    }
    func getRandomPhoto() {
        let urlString = "https://source.unsplash.com/random/600x600"
        let url = URL(string: urlString)!
        guard let data =  try? Data(contentsOf: url) else {
            return
        }
        imageView.image = UIImage(data: data)
    }
}
