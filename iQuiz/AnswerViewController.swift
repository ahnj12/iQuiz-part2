//
//  AnswerViewController.swift
//  iQuiz
//
//  Created by Jooneil Ahn on 11/12/15.
//  Copyright © 2015 Jooneil Ahn. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var correctAnswer: UILabel!
    @IBOutlet weak var givenAnswer: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    var given = String()
    var question = Question(question: "",answers: [],correctAnswer: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.questionLabel.text = "The question was: \(question.question)"
        self.correctAnswer.text = "The correct answer is: \(question.correctAnswer)"
        
        if given == question.correctAnswer {
            
            self.givenAnswer.text = "You got it right!"
        } else {
            self.givenAnswer.text = "You got it wrong!"
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
