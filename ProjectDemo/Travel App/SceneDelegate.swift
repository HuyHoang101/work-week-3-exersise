//
//  SceneDelegate.swift
//  ProjectDemo
//
//  Created by hoang.nguyenh on 12/23/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        // Tab 1
        // Lấy từ storyBoard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let listVC = storyboard.instantiateViewController(identifier: "ListViewController")
        
        let nav1 = UINavigationController(rootViewController: listVC)
        nav1.tabBarItem = UITabBarItem(title: "Travel List", image: UIImage(systemName: "suitcase.fill"), tag: 0)
        
        // Tab 2
        let drawingVC = HomeViewController()
        let nav2 = UINavigationController(rootViewController: drawingVC)
        nav2.tabBarItem = UITabBarItem(title: "Drawing", image: UIImage(systemName: "pencil.tip.crop.circle"), tag: 1)
        
        // Tạo thanh tab bar (NAVBAR ở dưới)
        let tabController = UITabBarController()
        tabController.viewControllers = [nav1, nav2]
        tabController.tabBar.backgroundColor = .appBackground
        tabController.tabBar.tintColor = .colorAppPrimary
        tabController.tabBar.unselectedItemTintColor = .text2
        
        
        
        
        // Gán lên cửa sổ
        window.rootViewController = tabController
        self.window = window
        self.window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


