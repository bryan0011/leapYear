//
//  ViewController.swift
//  leapYear
//
//  Created by Bryan Kuo on 2021/10/6.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var starSignLabel: UILabel!
    @IBOutlet weak var starSignImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        result.layer.cornerRadius = 10
    }

    func leapYearCalulate() {
        let selectDate = datePicker.date
        let calender = Calendar.current
        let year = calender.component(.year, from: selectDate)
        let month = calender.component(.month, from: selectDate)
        let weekday = calender.component(.weekday, from: selectDate)
        let day = calender.component(.day, from: selectDate)
        print(year,month,day,weekday)
        
        let weekdays = ["","星期一","星期二","星期三","星期四","星期五","星期六","星期日"]
        
        if month == 1 && day >= 19 || month == 2 && day <= 19 {
            starSignLabel.text = "水瓶座 Aquarius"
            starSignImageView.image = UIImage(named: "1")
        }else if month == 2 && day >= 20 || month == 3 && day <= 20 {
            starSignLabel.text = "雙魚座 Pisces"
            starSignImageView.image = UIImage(named: "2")
        }else if month == 3 && day >= 21 || month == 4 && day <= 20 {
            starSignLabel.text = "牡羊座 Aries"
            starSignImageView.image = UIImage(named: "3")
        }else if month == 4 && day >= 21 || month == 5 && day <= 20 {
            starSignLabel.text = "金牛座 Taurus"
            starSignImageView.image = UIImage(named: "4")
        }else if month == 5 && day >= 21 || month == 6 && day <= 20 {
            starSignLabel.text = "雙子座 Gemini"
            starSignImageView.image = UIImage(named: "5")
        }else if month == 6 && day >= 21 || month == 7 && day <= 22 {
            starSignLabel.text = "巨蟹座 Cancer"
            starSignImageView.image = UIImage(named: "6")
        }else if month == 7 && day >= 23 || month == 8 && day <= 22 {
            starSignLabel.text = "獅子座 Leo"
            starSignImageView.image = UIImage(named: "7")
        }else if month == 8 && day >= 23 || month == 9 && day <= 22 {
            starSignLabel.text = "處女座 Virgo"
            starSignImageView.image = UIImage(named: "8")
        }else if month == 9 && day >= 23 || month == 10 && day <= 22 {
            starSignLabel.text = "天秤座 Libra"
            starSignImageView.image = UIImage(named: "9")
        }else if month == 10 && day >= 23 || month == 11 && day <= 22 {
            starSignLabel.text = "天蠍座 Scorpio"
            starSignImageView.image = UIImage(named: "10")
        }else if month == 11 && day >= 23 || month == 12 && day <= 22 {
            starSignLabel.text = "射手座 Sagittarius"
            starSignImageView.image = UIImage(named: "11")
        }else{
            starSignLabel.text = "摩羯座 Capricorn"
            starSignImageView.image = UIImage(named: "12")
        }
        
        if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
            result.text = "\(year)年\(month)月\(day)號為\(weekdays[weekday])，潤年"
        } else {
            result.text = "\(year)年\(month)月\(day)號為\(weekdays[weekday])，平年"
        }

    }
    
    
    @IBAction func checkLeapYear(_ sender: Any) {
        leapYearCalulate()
        
    }
    
}

