import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var downloadButton: UIButton!
    @IBOutlet weak var blankCard: UIImageView!
    @IBOutlet weak var flagChangedTapped: UITextField!
    
    let countryEmojis: [String: String] = [
            "Argentina": "🇦🇷",
                    "Australia": "🇦🇺",
                    "Austria": "🇦🇹",
                    "Belgium": "🇧🇪",
                    "Brazil": "🇧🇷",
                    "Canada": "🇨🇦",
                    "Chile": "🇨🇱",
                    "China": "🇨🇳",
                    "Czech Republic": "🇨🇿",
                    "Denmark": "🇩🇰",
                    "Finland": "🇫🇮",
                    "France": "🇫🇷",
                    "Germany": "🇩🇪",
                    "Greece": "🇬🇷",
                    "Hungary": "🇭🇺",
                    "India": "🇮🇳",
                    "Ireland": "🇮🇪",
                    "Italy": "🇮🇹",
                    "Japan": "🇯🇵",
                    "Malaysia": "🇲🇾",
                    "Mexico": "🇲🇽",
                    "Netherlands": "🇳🇱",
                    "New Zealand": "🇳🇿",
                    "Norway": "🇳🇴",
                    "Poland": "🇵🇱",
                    "Portugal": "🇵🇹",
                    "Romania": "🇷🇴",
                    "Russia": "🇷🇺",
                    "Singapore": "🇸🇬",
                    "South Africa": "🇿🇦",
                    "South Korea": "🇰🇷",
                    "Spain": "🇪🇸",
                    "Sweden": "🇸🇪",
                    "Switzerland": "🇨🇭",
                    "Turkey": "🇹🇷",
                    "Ukraine": "🇺🇦",
                    "United Kingdom": "🇬🇧",
                    "United States": "🇺🇸"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        downloadButton.setTitle("", for: .normal)
    }
    
    @IBAction func kartSecButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Kart Seç", message: "Bir kart seçin", preferredStyle: .actionSheet)
        
        let kart1Action = UIAlertAction(title: "Kart 1", style: .default) { (_) in
            self.blankCard.image = UIImage(named: "1.png")
        }
        
        let kart2Action = UIAlertAction(title: "Kart 2", style: .default) { (_) in
            self.blankCard.image = UIImage(named: "2.png")
        }
        
        let kart3Action = UIAlertAction(title: "Kart 3", style: .default) { (_) in
            self.blankCard.image = UIImage(named: "3.png")
        }
        
        let kart4Action = UIAlertAction(title: "Kart 4", style: .default) { (_) in
            self.blankCard.image = UIImage(named: "4.png")
        }
        
        alertController.addAction(kart1Action)
        alertController.addAction(kart2Action)
        alertController.addAction(kart3Action)
        alertController.addAction(kart4Action)
        
        if let popoverController = alertController.popoverPresentationController {
            popoverController.sourceView = sender
            popoverController.sourceRect = sender.bounds
            popoverController.permittedArrowDirections = .up
        }
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func takimSecButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Takım Seç", message: "Bir takım seçin", preferredStyle: .actionSheet)
        
        let takim1Action = UIAlertAction(title: "Takım 1", style: .default) { (_) in
            // Takım 1 seçildiğinde yapılacak işlemler
        }
        
        let takim2Action = UIAlertAction(title: "Takım 2", style: .default) { (_) in
            // Takım 2 seçildiğinde yapılacak işlemler
        }
        
        alertController.addAction(takim1Action)
        alertController.addAction(takim2Action)
        
        if let popoverController = alertController.popoverPresentationController {
            popoverController.sourceView = sender
            popoverController.sourceRect = sender.bounds
            popoverController.permittedArrowDirections = .up
        }
        
        present(alertController, animated: true, completion: nil)
    }

    @IBAction func ulkeSecButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Ülke Seç", message: "Bir ülke seçin", preferredStyle: .actionSheet)
        
        for (country, emoji) in countryEmojis {
            let ulkeAction = UIAlertAction(title: "\(emoji) \(country)", style: .default) { (_) in
                self.flagChangedTapped.text = "\(emoji) \(country)"
            }
            alertController.addAction(ulkeAction)
        }
        
        if let popoverController = alertController.popoverPresentationController {
            popoverController.sourceView = sender
            popoverController.sourceRect = sender.bounds
            popoverController.permittedArrowDirections = .up
        }
        
        present(alertController, animated: true, completion: nil)
    }
}
