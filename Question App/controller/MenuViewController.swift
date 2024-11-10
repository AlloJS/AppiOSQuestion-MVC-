import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var geographyButton: UIButton!
    @IBOutlet weak var storyButton: UIButton!
    @IBOutlet weak var scienceButton: UIButton!
    @IBOutlet weak var artButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var cinemaButton: UIButton!
    @IBOutlet weak var technologyButton: UIButton!
    @IBOutlet weak var literatureButton: UIButton!
    @IBOutlet weak var scoreText: UILabel!
    var brain: QuestionBrain = QuestionBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreText.text = String("Score: \(brain.score)")
    
        NotificationCenter.default.addObserver(self, selector: #selector(updateScore(_:)), name: .scoreDidChange, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateArguments(_:)), name: .argumentsDidChange, object: nil)
        
        styleAllButtons()
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1,
                        animations: {
                            sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)// Riduce il pulsante
                        }) { _ in
            UIView.animate(withDuration: 0.1) {
                sender.transform = .identity // Torna alla dimensione originale
            }
        }
        
        let buttonText = sender.titleLabel!.text!
       
        performSegue(withIdentifier: "segueToViewController", sender: buttonText)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let buttonText = sender.titleLabel!.text!
        if segue.identifier == "segueToViewController" {
            if let destinationVC = segue.destination as? ViewController {
                // Passa il testo del pulsante al secondo ViewController
                destinationVC.receivedText = sender as? String
            }
        }
    }
    
    @objc func updateScore(_ notification: Notification) {
        scoreText.text = brain.updateScoreMenu(notification, score: brain.score)
    }
     
    @objc func updateArguments(_ notification: Notification) {
        brain.updateArgumentsMenu(notification,questionIsDo: brain.questionIsDo)
        styleAllButtons()
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func styleAllButtons() {
        brain.styleMenuBtn(btn: geographyButton)
        brain.styleMenuBtn(btn: storyButton)
        brain.styleMenuBtn(btn: scienceButton)
        brain.styleMenuBtn(btn: artButton)
        brain.styleMenuBtn(btn: musicButton)
        brain.styleMenuBtn(btn: cinemaButton)
        brain.styleMenuBtn(btn: technologyButton)
        brain.styleMenuBtn(btn: literatureButton)
    }
}

extension Notification.Name {
    static let scoreDidChange = Notification.Name("scoreDidChange")
    static let argumentsDidChange = Notification.Name("argumentsDidChange")
}


