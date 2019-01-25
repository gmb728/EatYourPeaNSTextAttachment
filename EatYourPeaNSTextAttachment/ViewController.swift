//
//  ViewController.swift
//  EatYourPeaNSTextAttachment
//
//  Created by Chang Sophia on 1/24/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
   var player: AVPlayer?
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var daisyLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let speech = AVSpeechUtterance(string: "If you eat your peas")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speech)
      
        
    }
    
    @IBAction func myButtonPressed(_ sender: Any) {
        
        
        //產生NSMutableAttributedString物件，NSAttributedString 可包含圖片
        let content = NSMutableAttributedString(string: "I will buy you")
        
        //產生包含圖片的NSTextAttachment 物件
        let puddingAttachment = NSTextAttachment()
        puddingAttachment.image = UIImage(named: "12 puddings")
       
        //puddingAttachment 的大小位置
        puddingAttachment.bounds = CGRect(x: 10, y:-10, width:50, height:50)
        
        //生成NSAttributedString時傳入puddingAttachment, 產生包含圖片的文件，把它加入content上
        content.append(NSAttributedString(attachment: puddingAttachment))
        
       
      //more bargaining chips
        content.append(NSAttributedString(string: "...and"))
        let bicycleAttachment = NSTextAttachment()
        bicycleAttachment.image = UIImage(named: "15 new bikes")
        bicycleAttachment.bounds = CGRect(x: 10, y: -10, width: 50, height:50)
        content.append(NSAttributedString(attachment: bicycleAttachment))
        
        content.append(NSAttributedString(string: "...and"))
        let factoryAttachment = NSTextAttachment()
        factoryAttachment.image = UIImage(named: "8 chocolate factories")
        factoryAttachment.bounds = CGRect(x: 10, y: -10, width: 50, height:50)
        content.append(NSAttributedString(attachment: factoryAttachment))
        
        content.append(NSAttributedString(string: "...and"))
        let zebraAttachment = NSTextAttachment()
        zebraAttachment.image = UIImage(named: "3 zebras")
        zebraAttachment.bounds = CGRect(x: 10, y: -10, width: 50, height:50)
        content.append(NSAttributedString(attachment: zebraAttachment))
        
        content.append(NSAttributedString(string: "...and"))
        let superlandAttachment = NSTextAttachment()
        superlandAttachment.image = UIImage(named: "5 superlands")
        superlandAttachment.bounds = CGRect(x: 10, y: -10, width: 50, height:50)
        content.append(NSAttributedString(attachment: superlandAttachment))
        
        content.append(NSAttributedString(string: "...and"))
        let swimmingpoolAttachment = NSTextAttachment()
        swimmingpoolAttachment.image = UIImage(named: "17 swimming pools")
        swimmingpoolAttachment.bounds = CGRect(x: 10, y: -10, width: 50, height:50)
        content.append(NSAttributedString(attachment: swimmingpoolAttachment))
        
        content.append(NSAttributedString(string: "...and"))
        let rocketAttachment = NSTextAttachment()
        rocketAttachment.image = UIImage(named: "6 rockets")
        rocketAttachment.bounds = CGRect(x: 10, y: -10, width: 50, height:50)
        content.append(NSAttributedString(attachment: rocketAttachment))
        
        content.append(NSAttributedString(string: "...and"))
        let babyelephantAttachment = NSTextAttachment()
        babyelephantAttachment.image = UIImage(named: "2 baby elephants")
        babyelephantAttachment.bounds = CGRect(x: 10, y: -10, width: 50, height:50)
        content.append(NSAttributedString(attachment: babyelephantAttachment))
        
        content.append(NSAttributedString(string: "...and"))
        let supermarketAttachment = NSTextAttachment()
        supermarketAttachment.image = UIImage(named: "16 supermarkets")
        supermarketAttachment.bounds = CGRect(x: 10, y: -10, width: 50, height:50)
        content.append(NSAttributedString(attachment: supermarketAttachment))
        
        //將label的attributedText設為content, 顯示包含圖片的文字
        let label = UILabel(frame: CGRect(x: 40, y:0, width: 700, height:600))
        myLabel.numberOfLines = 5
        myLabel.attributedText = content
       
     
        let speech = AVSpeechUtterance(string: "I will buy you 12 puddings, and 15 new bikes, and 8 chocolate factories, and 3 zebras, and 5 superlands, and 17 swimming pools, and 6 rockets, and 2 baby elephants, and 16 supermarkets")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speech)
    }
    
    @IBAction func daisyButtonPressed(_ sender: Any) {
        daisyLabel.text = "I don't like peas!"
        if let url = Bundle.main.url(forResource: "I don't like peas", withExtension: "mov") {
            player = AVPlayer(url: url)
            player?.play()
        }
        
    }
        
    }
    
    




