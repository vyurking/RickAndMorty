//
//  RMEpisodeDetailViewController.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 29.01.2023.
//

import UIKit

class RMEpisodeDetailViewController: UIViewController {
    
    private let url: URL?
    
    init(url: URL?) {
        self.url = url
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Episode"
        view.backgroundColor = .systemMint
    }
    

}
