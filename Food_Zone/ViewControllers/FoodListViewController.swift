//
//  FoodListViewController.swift
//  Food_Zone
//
//  Created by Kaushani Watagoda on 2/5/23.
//

import UIKit

class FoodListViewController: UIViewController {

    var tableView = UITableView()
    var foods: [Foods] = []
    
    struct Cells {
        static let foodCell = "foodCell"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Food For You!"
        foods = fetchData()
        configureTableView()

       
    }
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(foodCell.self, forCellReuseIdentifier: Cells.foodCell)
        tableView.pin(to: view)
        
    }
    
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    


}
extension FoodListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.foodCell) as! foodCell
        let food = foods[indexPath.row]
        cell.set(Foods: food)
        
        
        return cell
    }
        
    }

extension FoodListViewController {
    
    func fetchData() -> [Foods] {
        let food1  = Foods(image: Images.cupcake, title: "Vanilla cupcake")
        let food2  = Foods(image: Images.burger, title: "Chicken Burger")
        let food3  = Foods(image: Images.pizza, title: "Chicken Pizza")
        let food4  = Foods(image: Images.sandwich, title: "Veg Sandwich")
        let food5  = Foods(image: Images.cheesebgr, title: "Cheese Burger")
        let food6  = Foods(image: Images.chrispychickenbgr, title: "Crispy Chicken Burger")
        let food7  = Foods(image: Images.beefbgr, title: "Beef Burger")
        let food8  = Foods(image: Images.friedchickenbgr, title: "Fried Chicken Burger")
        let food9  = Foods(image: Images.beefpizza, title: "Beef Pizza")
        let food10 = Foods(image: Images.spicypizza, title: "Spicy Pizza")
        let food11 = Foods(image: Images.chickensandwich, title: "Chicken Sandwich")
        let food12 = Foods(image: Images.clubsandwich, title: "Club Sandwich")
        let food13 = Foods(image: Images.chocolatecc, title: "Chocolate cupcake")
        let food14 = Foods(image: Images.orangecc, title: "Orange cupcake")
        let food15 = Foods(image: Images.rainbowcc, title: "Rainbow cupcake")
        let food16 = Foods(image: Images.redvelvetcc, title: "Redvelvet cupcake")
        let food17 = Foods(image: Images.strawberycc, title: "Strawberry cupcake")
        
        return [food1, food2, food3, food4, food5, food6, food7, food8, food9, food10, food11, food12, food13, food14, food15, food16, food17]
}

}
