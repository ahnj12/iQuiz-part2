//
//  AnswerListViewController.swift
//  iQuiz
//
//  Created by Jooneil Ahn on 11/12/15.
//  Copyright © 2015 Jooneil Ahn. All rights reserved.
//

import UIKit

class AnswerListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var question = Question(question: "",answers: [],correctAnswer: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("quizCell") as! quizCell
        cell.answerTitle.text = self.question.answers[indexPath.row]
        cell.answerIndex = indexPath.row
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier! == "goToResult" {
            let view = segue.destinationViewController as! AnswerViewController
            let cell = sender as! quizCell
            view.question = question
            view.given = question.answers[cell.answerIndex]
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
