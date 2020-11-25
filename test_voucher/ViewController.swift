//
//  ViewController.swift
//  test_voucher
//
//  Created by Ngo Van Quan on 11/19/20.
//  Copyright © 2020 Ngo Van Quan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    var names = ["Xuan", "Ha", "Thu", "Dong"]
//    var ages = [19, 20, 21, 22]
//    let tableview: UITableView = {
//        let tv = UITableView()
//        tv.backgroundColor = UIColor.white
//        tv.translatesAutoresizingMaskIntoConstraints = false
//        return tv
//    }()
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
////        self.tableview.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
//    }
//    func setupTableView() {
//        tableview.delegate = self
//        tableview.dataSource = self
//        tableview.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
//
//        view.addSubview(tableview)
//
//        NSLayoutConstraint.activate([
//            tableview.topAnchor.constraint(equalTo: self.view.topAnchor),
//            tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
//            tableview.rightAnchor.constraint(equalTo: self.view.rightAnchor),
//            tableview.leftAnchor.constraint(equalTo: self.view.leftAnchor)
//        ])
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        setupTableView()
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableview.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
//           cell.backgroundColor = UIColor.white
//           return cell
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//      return 5
//    }
//}
//
