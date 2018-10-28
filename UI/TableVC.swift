//
//  TableVC.swift
//  UI
//
//  Created by MB on 10/28/18.
//  Copyright © 2018 MB. All rights reserved.
//

import UIKit

class TableVC: UIViewController {
    var videos : [Video] = []
    
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        videos = createArray()
        
        // setting delegate and datasource for tableview inorder to fire delegate methods we wrote in extension
        TableView.delegate = self
        TableView.dataSource = self
    }
    //keys for image literal are shift + cmd + M
    
    // creating data for TableView cells
    func createArray() -> [Video]{
        var tempVideo : [Video] = []
        let video1 = Video(image:#imageLiteral(resourceName: "640x480.jpg"), title: "wallpaper 1")
        let video2 = Video(image:#imageLiteral(resourceName: "6899887-free-live-wallpapers.jpg"), title: "wallpaper 2")
        let video3 = Video(image:#imageLiteral(resourceName: "free-computer-wallpaper-4-Cool-Wallpaper_SMVfbcz.jpg"), title: "wallpaper 3")
        let video4 = Video(image:#imageLiteral(resourceName: "hdwallpapersnet-free-wallpaper-5919d3ca3df78cf5fa49bda3.jpg"), title: "wallpaper 4")
        let video5 = Video(image:#imageLiteral(resourceName: "images.jpg"), title: "wallpaper 5")
        let video6 = Video(image:#imageLiteral(resourceName: "images2.jpg"), title: "wallpaper 6")
        
        tempVideo.append(video1)
        tempVideo.append(video2)
        tempVideo.append(video3)
        tempVideo.append(video4)
        tempVideo.append(video5)
        tempVideo.append(video6)
        return tempVideo
    }
    



}
// we made tableview conform to proper delegates
extension TableVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    // indexpath is called everytime a new row has appeared
    //configuring each cell as it appears
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // getting video at cell poisiton
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        //rather than defining here all properties we define it on cell
        //configuration cell at a particular position
        cell.setVideo(video: video)
        
        return cell
    }

    
}
