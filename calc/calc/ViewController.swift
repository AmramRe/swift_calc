//
//  ViewController.swift
//  calc
//
//  Created by MasahiroSato on 2017/04/16.
//  Copyright © 2017年 masa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    // 演算子をタップする前の保存
    var before = 0
    // 演算子
    var type = ""
    // 演算子をタップ後の保存
    var now = 0
    // 結果
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.backgroundColor = UIColor.orange
        label.textColor = UIColor.white
        label.layer.masksToBounds = true
        label.text = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func inputNumber(_ sender: UIButton) {
        // ボタンの値格納
        let num = Int(sender.currentTitle!)
        if type.isEmpty {
            // 演算子が空の場合
            before = before * 10 + num!
            label.text = String(describing: before)
        } else {
            // 演算子が指定されている場合
            now = now * 10 + num!
            label.text = String(before)+type+String(now)
        }
    }

    @IBAction func clear(_ sender: Any) {
        before = 0
        now = 0
        result = 0
        label.text = nil
    }
    
    @IBAction func plus(_ sender: Any) {
        type = "+"
    }
    
    @IBAction func minus(_ sender: Any) {
        type = "-"
    }
    
    @IBAction func kakeru(_ sender: Any) {
        type = "*"
    }
    
    @IBAction func waru(_ sender: Any) {
        type = "/"
    }
    
    @IBAction func eqall(_ sender: Any) {
        if type.isEmpty {
            // なにもしない
        } else {
            if type == "+" {
                result = before + now
            } else if type == "-" {
                result = before - now
            } else if type == "*" {
                result = before * now
            } else if type == "/" {
                result = before / now
            }
            
            label.text = String(result)
        }
        
    }
    
    @IBAction func zero(_ sender: Any) {
        if type.isEmpty {
            before = 0
            label.text = String(before)
        } else {
            now = 0
            label.text = String(now)
        }
    }
}

