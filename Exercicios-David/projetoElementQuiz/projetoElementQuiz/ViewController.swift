//
//  ViewController.swift
//  projetoElementQuiz
//
//  Created by David Lima de Oliveira on 10/02/21.
//

import UIKit

var state: State = .question
enum State {
    case question
    case answer
}

var mode: Mode = .flashCard
enum Mode {
    case flashCard
    case quiz
}

class ViewController: UIViewController, UITextFieldDelegate {

    ///array de elementos
    let elementList = [ "Carbon", "Chlorine", "Gold", "Sodium"]
    
    ///variavel apra chamar os elementos
    var currentElementIndex = 0
    var answerIsCorrect = false
    var correctAnswerCount = 0
    var mode: Mode = .flashCard {
        didSet {
            updateUI()
        }
    }
    
    @IBOutlet weak var modeSelector: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBAction func showAnswer(_ sender: Any) {
        state = .answer
        updateUI()
//        answerLabel.text = elementList[currentElementIndex]
    }
    @IBAction func next(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        state = .question
        updateUI()
    }
    
    
    @IBAction func switchModes(_ sender: Any) {
        if modeSelector.selectedSegmentIndex == 0 {
            mode = .flashCard
        } else {
            mode = .quiz
        }
    }
    
    
    
    ///funco dos elementos ficha de estudo
    func updateFlaschCardUI(elementName: String) {
        ///campo texto teclado
        textField.isHidden = true
        textField.resignFirstResponder()
        ///rotulo de resposta
        if state == .answer {
            answerLabel.text = elementName
        } else {
            answerLabel.text = "?"
        }
    }
    
    ///funcao app teste
    func updateQuizUI(elementName: String)  {
        ///campo de texto e teclado
        textField.isHidden = false
        switch state {
        case .question:
            textField.text = ""
            textField.becomeFirstResponder()
        case .answer:
            textField.resignFirstResponder()
        }
        ///codigo compartilhado atualizacao de imagem
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        switch state {
        case .question:
            answerLabel.text = ""
        case .answer:
            if answerIsCorrect {
                answerLabel.text = "Correto!"
            } else {
                answerLabel.text = "❌"
            }
        }
    }
    
    ///funcao de modo de estado / alterado para faciliar leitura
    func updateUI() {
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        switch mode {
        case .flashCard: updateFlaschCardUI(elementName: elementName)
        case .quiz: updateQuizUI(elementName: elementName)
        }
    }
    
    ///apos tecla return no teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let textFieldContents = textField.text!
        ///determina resposta do usuario correto e atualzia o estado
        if textFieldContents.lowercased() == elementList[currentElementIndex].lowercased(){
            answerIsCorrect = true
            correctAnswerCount += 1
        } else {
            answerIsCorrect = false
        }
        if answerIsCorrect {
            print("Coreto!")
        } else {
            print("❌")
        }
        ///agora deve mostrar resposta ao usuario
        state = .answer
        updateUI()
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
}

