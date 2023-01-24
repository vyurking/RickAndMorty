//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Всеволод Юркин on 24.01.2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive"),
            ]
        )
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            
        }
    }
    


}
