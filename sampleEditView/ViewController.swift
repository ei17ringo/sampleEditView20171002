//
//  ViewController.swift
//  sampleEditView
//
//  Created by Eriko Ichinohe on 2017/12/01.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

//テキストフィールドのプロトコルを指定
class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var myTitle: UITextField!
    
    @IBOutlet weak var myDate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //入力開始時に発動
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        print("入力開始")
        
        print(textField.tag)
        //一旦キーボード全部下げる
        myTitle.resignFirstResponder()
        
        switch textField.tag {
        case 1:
            //タイトル
            return true
        case 2:
            //日付
            return false
            
        default:
            return true
        }
        
//        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

