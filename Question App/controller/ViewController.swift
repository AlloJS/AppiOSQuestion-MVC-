import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var buttonTrue: UIButton!
    @IBOutlet weak var buttonFalse: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    var brain: QuestionBrain = QuestionBrain()
    var receivedText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        progressBar.progress = 0
        progressBar.progressTintColor = .pastelGreen
        navigationItem.title = "Domande su \(receivedText!)"
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.black
        ]
        progressBar.layer.cornerRadius = 10 // Arrotonda i bordi
        progressBar.clipsToBounds = true
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 3) // Scala l'altezza
        brain.arrayQuestions = brain.chooseArray(receivedText: receivedText!)
        brain.maxQuestion = brain.getMaxQuestion(arrayQuestion: brain.arrayQuestions)
        brain.styleBtn(btn: buttonTrue)
        brain.styleBtn(btn: buttonFalse)
        textLabel.text =  brain.arrayQuestions[0].text
    }
    
    @IBAction func chooseAnswer(_ sender: UIButton) {
        setupBrainLOgic(sender)
    }
    
    func setupBrainLOgic(_ sender: UIButton) {
        if brain.countQuestionCurrent() == true {
            progressBar.progress = Float( brain.currentQuestion + 1) / Float( brain.maxQuestion)
            UIView.animate(withDuration: 0.1,
                            animations: {
                                sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)// Riduce il pulsante
                            }) { _ in
                UIView.animate(withDuration: 0.1) {
                    sender.transform = .identity // Torna alla dimensione originale
                }
            }
            let userAnswer: String! = sender.titleLabel!.text!
            brain.rightAnswers = brain.increeserightAnswers(userAnswer: userAnswer, rightAnswers: brain.rightAnswers, sender: sender)
            brain.wrongAnswers = brain.increesewrongAnwers(userAnswer: userAnswer, wrongAnwers: brain.wrongAnswers, sender: sender)
            brain.currentQuestion += 1
            textLabel.text =  brain.arrayQuestions[brain.currentQuestion].text
        } else {
            brain.currentQuestion += 1
            brain.totalPercent =  brain.percentAnswer(rightAnswers: brain.rightAnswers,maxQuestion:brain.maxQuestion)
            brain.formattedNumber =  brain.formatterPercent(totalPercent:  brain.totalPercent)
            brain.result = brain.getVariableResult(totalPercent: brain.totalPercent)!
            brain.score +=  brain.rightAnswers
            
            brain.score = brain.removeScore(score:  brain.score,wrongAnswers: brain.wrongAnswers)
            brain.saveScoreArguments(score: brain.score,string: "puntiGiocatore",userInfo: "newScore",name: .scoreDidChange)
            textLabel.text = brain.getStrResult(rightAnswers: brain.rightAnswers, wrongAnswers: brain.wrongAnswers,formattedNumber: brain.formattedNumber, result: brain.result , maxQuestion: brain.maxQuestion, score: brain.score)
            
            progressBar.progress = 1
            brain.questionIsDo.append(receivedText!)
            brain.saveScoreArguments(score: brain.questionIsDo,string: "domandeFatte",userInfo: "argumentDo",name: .argumentsDidChange)
        }
    }
}

extension UIColor {
    static let pastelGreen = UIColor(red: 119/255, green: 221/255, blue: 119/255, alpha: 1.0) // Verde pastello
    static let pastelRed = UIColor(red: 255/255, green: 105/255, blue: 97/255, alpha: 1.0)   // Rosso pastello
    static let customOriginalColor = UIColor(red: 127/255, green: 158/255, blue: 193/255, alpha: 1.0) // #7F9EC1
}
