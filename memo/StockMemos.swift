//
//  StockMemos.swift
//  memo
//
//  Created by 森泉亮介 on 2016/02/16.
//  Copyright © 2016年 森泉亮介. All rights reserved.
//

import UIKit
import Alamofire

//HTTP通信を行うファイルでAlamofireをインポートし、HTTP通信に必要な処理を書く
//HTTPメソッド, URL, parameterを指定

class StockMemos: NSObject {
    
    // 保存ボタンが押されたときに呼ばれるメソッドを定義
    class func postMemo(memo: Memo) {
        
        let params: [String: AnyObject] = [
            "text": memo.text
        ]
        
        // HTTP通信
        Alamofire.request(.POST, "http://localhost:3000/api/memos", parameters: params, encoding: .URL).responseJSON { response in
            
            print("=============JSON================")
            print(response)
        }
    }
}
