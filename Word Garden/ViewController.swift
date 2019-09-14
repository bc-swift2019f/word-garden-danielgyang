//
//  ViewController.swift
//  Word Garden
//
//  Created by Daniel Yang on 9/13/19.
//  Copyright © 2019 Daniel Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("in viewDidLoad, is the guessedLetterField the first responder?", guessedLetterField.isFirstResponder)
    }
    
    func updateUIAfterGuess() {
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        print("Hey the guessed letter field changed")
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        print("in doneKeyPressed, is the guessedLetterField the first responder before updateUIAfterGuess?", guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("in doneKeyPressed, is the guessedLetterField the first responder after updateUIAfterGuess?", guessedLetterField.isFirstResponder)
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        print("in guessLetterButtonPressed, is the guessedLetterField the first responder before updateUIAfterGuess?", guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("in guessLetterButtonPressed, is the guessedLetterField the first responder after updateUIAfterGuess?", guessedLetterField.isFirstResponder)
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}

