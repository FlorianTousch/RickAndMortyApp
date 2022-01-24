//
//  FeedViewController.swift
//  RickAndMortyIOS
//
//  Created by Florian on 24/01/2022.
//

import UIKit
import RickAndMortyApp

final public class FeedViewController: UITableViewController {
    private var loader: FeedLoader?
    
    public convenience init(loader: FeedLoader) {
        self.init()
        
        self.loader = loader
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(load), for: .valueChanged)
        load()
    }
    
    @objc func load() {
        refreshControl?.beginRefreshing()
        loader?.load() { [weak self] _ in
            self?.refreshControl?.endRefreshing()
        }
    }
}