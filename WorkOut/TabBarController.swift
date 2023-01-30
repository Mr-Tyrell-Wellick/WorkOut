//
//  TabBarController.swift
//  WorkOut
//
//  Created by Ульви Пашаев on 31.01.2023.
//

import UIKit

// MARK: - 1 Properties
// Задаем количество Tab'ов (вкладок). Делаем через Enum, в случае необходимости в дальнейшем в приложении переключаться, не используя индексы, а enum'ы.
enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Создаем внешний вид TabBar'a, используя функцию
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white //задний фон
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor // разделитель
        tabBar.layer.borderWidth = 1 // ширина разделителя
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()
        
        // MARK: - 2
        // Создаем 4 UINavigationController'a отвечающие за ....
        let overviewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionNavigation = UINavigationController(rootViewController: sessionController)
        let progressNavigation = UINavigationController(rootViewController: progressController)
        let settingsNavigation = UINavigationController(rootViewController: settingsController)
        
        
        // MARK: - 3
        // Создаем item'ы (кнопки для перехода в нужный контроллер)
        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                    image: Resources.Images.TabBar.session,
                                                    tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.overview.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
    
        // MARK: - 4
        // Заполняем контейнеры с контроллерами TabBar'a нашими навигационными контроллерами
        setViewControllers([overviewNavigation,
                            sessionNavigation,
                            progressNavigation,
                            settingsNavigation
                           ], animated: false)
    }
}
