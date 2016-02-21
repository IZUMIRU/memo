//
//  ViewController.swift
//  memo
//
//  Created by 森泉亮介 on 2016/02/16.
//  Copyright © 2016年 森泉亮介. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //StockMemos.swiftのpostMemo()メソッドを呼び出す処理を記述
    @IBAction func tapSaveBtn(sender: UIButton) {
        let memo = Memo()
        memo.text = textView.text
        
        StockMemos.postMemo(memo)
    }
}
