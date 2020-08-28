//
//  NasaItemsController.swift
//  App_iOS
//
//  Created by user178431 on 8/28/20.
//  Copyright © 2020 com.fiek. All rights reserved.
//

import UIKit

class NasaItemsController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!

    var items: [NasaItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.title = "NASA"
        // Do any additional setup after loading the view.
    }

    @IBAction func rightBarButtonPressed(_ sender: UIBarButtonItem){}

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.item]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NasaItemTableCell", for: indexPath) as! NasaItemTableCell
        return cell

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
