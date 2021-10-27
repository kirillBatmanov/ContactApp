//
//  TabBarViewController.swift
//  ContactApp
//
//  Created by Кирилл Батманов on 27.10.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        
        let persons = Person.getPerson()
        guard let mainContactListVC = viewControllers?.first as? MainContactListViewController else { return }
        guard let sectionListVC = viewControllers?.last as? SectionListViewController else { return }
        
        mainContactListVC.persons = persons
        sectionListVC.persons = persons
    }
    
}
