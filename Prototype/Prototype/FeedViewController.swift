//
//  FeedViewController.swift
//  Prototype
//
//  Created by Florian on 24/01/2022.
//

import UIKit

struct FeedImageViewModel {
    let name: String
    let status: String
    let gender: String
    let imageName: String
}

final class FeedViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "FeedImageCell")!
    }
}

