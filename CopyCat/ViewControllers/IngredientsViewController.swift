//
//  IngredientsViewController.swift
//  CopyCat
//
//  Created by Steph Ananth on 3/26/21.
//

import UIKit

public class IngredientsViewController: UITableViewController {
    private var viewModel = IngredientsViewModel()

    override public func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }

    private func setupNavigationBar() {
        title = "Ingredients"
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addIngredient))
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(showNutritionVC))
        navigationItem.leftBarButtonItem = addButton
        navigationItem.rightBarButtonItem = doneButton
    }

    @objc private func addIngredient() {
        print("HERE")
    }

    @objc private func showNutritionVC() {
        let nutritionVC = UIViewController()
        navigationController?.pushViewController(nutritionVC, animated: true)
    }
}
