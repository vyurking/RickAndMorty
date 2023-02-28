//
//  RMEpisodeViewController.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 24.01.2023.
//

import UIKit

final class RMEpisodeViewController: UIViewController, RMEpisodeListViewDelegate {
        
    private let episodeListView = RMEpisodeListView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Episodes"
            
        setUpViews()
        
        addSearchButton()
    }
    
    private func setUpViews() {
        episodeListView.delegate = self
        view.addSubview(episodeListView)
        NSLayoutConstraint.activate([
            episodeListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            episodeListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            episodeListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            episodeListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    private func addSearchButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    @objc
    private func didTapSearch() {
        
    }
    
    // MARK: - RMEpisodeListViewDelegate
    
    func rmEpisodeListView(_ episodeListView: RMEpisodeListView, didSelectEpisode episode: RMEpisode) {
        let episodeVC = RMEpisodeDetailViewController(url: URL(string: episode.url))
        episodeVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(episodeVC, animated: true)
    }
    

}
