//
//  ViewController.swift
//  test
//
//  Created by Atay on 9/21/20.
//

import UIKit

class ViewTimerController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var timeLable: UILabel!
        
    var time = 0
    var minutes = 0
    var hour = 0
    
    var timer = Timer()

    @IBAction func hourSlider(_ sender: UISlider){
        if !timer.isValid{
            hour = Int(sender.value)

            let hourLableStr = hour > 9 ? "\(hour)" : "0\(hour)"
        
            if minutes == 0{
                timeLable.text = "\(hourLableStr):00:00"
            }else{
                let minLableStr = minutes > 9 ? "\(minutes)" : "0\(minutes)"
                timeLable.text = "\(hourLableStr):\(minLableStr):00"

            }
        }
    }

    @IBAction func minuteSlider(_ sender: UISlider){
        if !timer.isValid{
            minutes = Int(sender.value)

            let minLableStr = minutes > 9 ? "\(minutes)" : "0\(minutes)"
            
            if hour == 0{
                timeLable.text = "00:\(minLableStr):00"
            }else{
                let hourLableStr = hour > 9 ? "\(hour)" : "0\(hour)"
                timeLable.text = "\(hourLableStr):\(minLableStr):00"

            }
        }
    }
    
    
    @IBAction func startButton(_ sender: UIButton) {
        if !timer.isValid{
            timer = Timer.scheduledTimer(timeInterval: 1.0,
                                        target: self,
                                        selector: #selector(action),
                                        userInfo: nil,
                                        repeats: true)
        }
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        timer.invalidate()
        time = 0
        minutes = 0
        hour = 0
        timeLable.text = "00:00:00"
    }
    
    
    @objc func action(){
        time -= 1
        if time <= 0 && minutes <= 0 && hour <= 0{
            timer.invalidate()
            time = 0
            minutes = 0
            hour = 0
            timeLable.text = "00:00:00"
            let alertTime = UIAlertController(title: "Alert", message: "Tik tok mother #@k%r, time is out", preferredStyle: .alert)
            alertTime.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
            self.present(alertTime, animated: true)
        }
        
        if time < 0{
            minutes -= 1
            time  = 59
        }
        
        if minutes < 0{
            hour -= 1
            minutes = 59
        }
        
        let secLableStr = time > 9 ? "\(time)" : "0\(time)"
        let minLableStr = minutes > 9 ? "\(minutes)" : "0\(minutes)"
        let hourLableStr = hour > 9 ? "\(hour)" : "0\(hour)"
        
        timeLable.text = "\(hourLableStr):\(minLableStr):\(secLableStr)"
    }
    
}

