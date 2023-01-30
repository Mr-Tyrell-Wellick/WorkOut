//
//  SceneDelegate.swift
//  WorkOut
//
//  Created by Ульви Пашаев on 31.01.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // MARK: - 1
        // создаем default'ный TabBar (инициализируем класс TabBarController)
        let tabBarController = TabBarController()
            
            // проверяем доступна ли сейчас windowScene
            guard let windowScene = (scene as? UIWindowScene) else { return }
            // и если это удается создаем window в рамках того bounds'a, который у нас
            window = UIWindow(frame: windowScene.coordinateSpace.bounds)
            
            // MARK: - 2
            // Заполняем окно, назначем ему рутовый экран и делаем видимым
            
            //устанавливаем windowScene который мы создали
            window?.windowScene = windowScene
            window?.rootViewController = tabBarController
            window?.makeKeyAndVisible()
        }
    }

