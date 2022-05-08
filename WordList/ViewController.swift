//
//  ViewController.swift
//  WordList
//
//  Created by 山崎颯汰 on 2022/04/29.
//

import UIKit

class ViewController: UIViewController {

    

    @IBAction func back(sender: UIStoryboardSegue){
        
    }
    
    @IBAction func startButtonTapped(){
        let saveData = UserDefaults.standard
        if(saveData.array(forKey: "WORD") != nil){
            if(saveData.array(forKey: "WORD")!.count > 0){
                performSegue(withIdentifier: "toQuestionView", sender: nil)
            }
        }else{
            let alart = UIAlertController(
                title: "単語",
                message: "まずは「単語一覧」をタップして単語登録してください",
                preferredStyle: .alert
            )
            alart.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
            ))
            
            self.present(alart, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

