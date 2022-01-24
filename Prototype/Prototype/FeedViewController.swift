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
    private let feed = FeedImageViewModel.prototypeFeed
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feed.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedImageCell", for: indexPath) as! FeedImageCell
        let model = feed[indexPath.row]
        cell.configure(with: model)
        return cell
    }
}

extension FeedImageCell {
    func configure(with model: FeedImageViewModel) {
        nameLabel.text = model.name
        statusLabel.text = model.status
        genderLabel.text = model.gender
        feedImageView.image = UIImage(named: model.imageName)
    }
}

