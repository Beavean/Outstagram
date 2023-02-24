//
//  MainTabController.swift
//  Outstagram
//
//  Created by Beavean on 16.02.2023.
//

import UIKit

final class MainTabController: UITabBarController {

    private struct NavigationItem {
        let viewController: UIViewController
        let unselectedImage: UIImage?
        let selectedImage: UIImage?
    }

    private let navigationItems: [NavigationItem] = [
        NavigationItem(viewController: FeedController(collectionViewLayout: UICollectionViewFlowLayout()),
                       unselectedImage: UIImage(systemName: "house"),
                       selectedImage: UIImage(systemName: "house.fill")),
        NavigationItem(viewController: SearchController(),
                       unselectedImage: UIImage(systemName: "magnifyingglass"),
                       selectedImage: UIImage(systemName: "sparkle.magnifyingglass")),
        NavigationItem(viewController: ImageSelectorController(),
                       unselectedImage: UIImage(systemName: "plus.app"),
                       selectedImage: UIImage(systemName: "plus.app")),
        NavigationItem(viewController: NotificationsController(),
                       unselectedImage: UIImage(systemName: "heart"),
                       selectedImage: UIImage(systemName: "heart.fill")),
        NavigationItem(viewController: ProfileController(),
                       unselectedImage: UIImage(systemName: "person"),
                       selectedImage: UIImage(systemName: "person.fill"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }

    private func configureViewControllers() {
        view.backgroundColor = .systemBackground
        let viewControllers = navigationItems.map { createNavigationController($0) }
        setViewControllers(viewControllers, animated: false)
        tabBar.tintColor = .label
    }

    private func createNavigationController(_ item: NavigationItem) -> UINavigationController {
        let navController = UINavigationController(rootViewController: item.viewController)
        navController.tabBarItem.image = item.unselectedImage
        navController.tabBarItem.selectedImage = item.selectedImage
        navController.navigationBar.tintColor = .label
        return navController
    }
}
