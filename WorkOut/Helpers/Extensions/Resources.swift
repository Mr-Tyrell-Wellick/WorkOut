//
//  Resources.swift
//  WorkOut
//
//  Created by Ульви Пашаев on 31.01.2023.
//
// MARK: - 1 Храним ресурсы
import Foundation
import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE") //цвет активности
        static var inactive = UIColor(hexString: "#929DA5") //цвет неактивности
        //        static var separator = UIColor(hexString: "#E8ECEF") // разделитель
        
        static var separator = UIColor(hexString: "E8ECEF")
    }
    
    //создаем перечисления строк
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
    }
    
    // перечисляем картинки с иконками для item'ов
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "OverView_tab")
            static var session = UIImage(named: "Session_tab")
            static var progress = UIImage(named: "Progress_tab")
            static var settings = UIImage(named: "Settings_tab")
        }
    }
}
