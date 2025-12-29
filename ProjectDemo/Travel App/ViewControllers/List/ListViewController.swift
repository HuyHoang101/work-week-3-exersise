//
//  ListViewController.swift
//  ProjectDemo
//
//  Created by hoang.nguyenh on 12/24/25.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DetailViewControllerDelegate {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var myDestinations = DestinationService.sharedData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Chỉ định table view dung view controler này làm "người quản lý"
        tableView.delegate = self
        tableView.dataSource = self
        
        // 2. Đăng ký XIB cho TableView
        let nib = UINib(nibName: "DestinationCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DestinationCell")
        
        // 3. Thêm "Back" navigate cho detailView
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDestinations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Lấy cái Cell đã đăng ký ra để dùng
        let cell = tableView.dequeueReusableCell(withIdentifier: "DestinationCell", for: indexPath) as! DestinationCell
        
        // Đổ dữ liệu từ Model vào View
        let data = myDestinations[indexPath.row]
        cell.destinationName.text = data.name
        cell.destinationLocation.text = data.location
        cell.destinationImageView.image = UIImage(named: data.imageName)
        cell.favorite.image = UIImage(systemName: data.isFavorite ? "heart.fill" : "heart")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 1. Lệnh này giúp Cell "nháy" một cái rồi trở về màu trắng bình thường ngay lập tức
        tableView.deselectRow(at: indexPath, animated: true)
        
        // 2. Lấy dữ liệu của dòng vừa nhấn (để sau này truyền sang màn hình Detail)
        let selectedData = myDestinations[indexPath.row]
        print("Bạn vừa nhấn vào: \(selectedData.name)")
        
        let detailVC = DetailViewController()
        
        detailVC.destination = selectedData
        detailVC.delegate = self
        
        // 3. Thực hiện đẩy màn hình
        if let nav = self.navigationController {
            nav.pushViewController(detailVC, animated: true)
        } else {
            print("❌ LỖI: Màn hình List chưa được nối vào Navigation!")
        }
    }
    
    func detailViewController (_ controller: DetailViewController, didUpdate destination: Destination) {
        guard let index = myDestinations.firstIndex(where: {
            $0.name == destination.name
        }) else {return}
        
        myDestinations[index] = destination
        tableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .automatic)
    }
}

