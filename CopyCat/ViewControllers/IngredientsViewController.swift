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
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addIngredient))
    }

    @objc private func addIngredient() {
        print("HERE")
    }
}
