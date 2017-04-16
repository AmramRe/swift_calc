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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clear(_ sender: Any) {
        before = 0
        now = 0
        result = 0
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
    
    @IBAction func one(_ sender: Any) {
        if type.isEmpty {
            before = before*10+1
            label.text = String(before)
        } else {
            now = now*10+1
            label.text = String(before)+type+String(now)
        }
    }
    
    @IBAction func second(_ sender: Any) {
        if type.isEmpty {
            before = before*10+2
            label.text = String(before)
        } else {
            now = now*10+2
            label.text = String(before)+type+String(now)
        }
    }
    
    @IBAction func three(_ sender: Any) {
        if type.isEmpty {
            before = before*10+3
            label.text = String(before)
        } else {
            now = now*10+3
            label.text = String(before)+type+String(now)
        }
    }
    
    @IBAction func four(_ sender: Any) {
        if type.isEmpty {
            before = before*10+4
            label.text = String(before)
        } else {
            now = now*10+4
            label.text = String(before)+type+String(now)
        }
    }
    
    @IBAction func five(_ sender: Any) {
        if type.isEmpty {
            before = before*10+5
            label.text = String(before)
        } else {
            now = now*10+5
            label.text = String(before)+type+String(now)
        }
    }
    
    @IBAction func six(_ sender: Any) {
        if type.isEmpty {
            before = before*10+6
            label.text = String(before)
        } else {
            now = now*10+6
            label.text = String(before)+type+String(now)
        }
    }
    
    @IBAction func seven(_ sender: Any) {
        if type.isEmpty {
            before = before*10+7
            label.text = String(before)
        } else {
            now = now*10+7
            label.text = String(before)+type+String(now)
        }
    }
    
    @IBAction func eight(_ sender: Any) {
        if type.isEmpty {
            before = before*10+8
            label.text = String(before)
        } else {
            now = now*10+8
            label.text = String(before)+type+String(now)
        }

    }
    
    @IBAction func nine(_ sender: Any) {
        if type.isEmpty {
            before = before*10+9
            label.text = String(before)
        } else {
            now = now*10+9
            label.text = String(before)+type+String(now)
        }
    }
    
}

