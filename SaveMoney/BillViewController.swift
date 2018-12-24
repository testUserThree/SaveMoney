//
//  ViewController.swift
//  SaveMoney
//
//  Created by student on 2018/12/24.
//  Copyright © 2018年 SiCNU. All rights reserved.
//

import UIKit

class BillViewController: UIViewController {
    
    
    @IBOutlet weak var b_bannerView: UIView!
    @IBOutlet weak var b_tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Interface Initialization
        initBillInterface()
    }

    func initBillInterface() {
        // set view backgroud color
        view.backgroundColor = UIColor.init(red: 251/255.0, green: 251/255.0, blue: 251/255.0, alpha: 1)
        
        // set banner backgroud iamge
        let b_bannerImg = UIImage(named: "b_banner_img")
        b_bannerView.layer.contents = b_bannerImg?.cgImage

    }
    

}

extension BillViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "b_cell", for: indexPath) as! BillTableViewCell
        cell.icon.image = UIImage(named: "b_cooking_icon")
        cell.name.text = "餐饮"
        cell.detail.text = "食堂"
        cell.money.text = "-10.00"
        cell.date.text = "2018/12/24"
        return cell
    }
}

extension BillViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

