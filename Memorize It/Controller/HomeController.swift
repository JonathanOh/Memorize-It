//
//  HomeController.swift
//  Memorize It
//
//  Created by Jonathan Oh on 8/25/17.
//  Copyright © 2017 esohjay. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    let audioListTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .red
        title = "Memorize It"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: .plain, target: self, action: #selector(addMemoTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addMemoTapped))
        
        setupAudioListTableView()
        
    }
    
    func addMemoTapped() {
        
    }

    func setupAudioListTableView() {
        audioListTableView.register(UITableViewCell.self, forCellReuseIdentifier: AudioCell.reuseID)
        view.addSubview(audioListTableView)
        audioListTableView.delegate = self
        audioListTableView.dataSource = self
        audioListTableView.translatesAutoresizingMaskIntoConstraints = false
        
        let audioListTableViewTopAnchor = audioListTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0)
        let audioListTableViewBottomAnchor = audioListTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0.0)
        let audioListTableViewLeftAnchor = audioListTableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0.0)
        let audioListTableViewRightAnchor = audioListTableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0.0)
        
        NSLayoutConstraint.activate([
                audioListTableViewTopAnchor,
                audioListTableViewBottomAnchor,
                audioListTableViewLeftAnchor,
                audioListTableViewRightAnchor
            ])
    }

}

extension HomeController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let audioDetailViewController = AudioDetailsViewController()
        navigationController?.pushViewController(audioDetailViewController, animated: true)
    }
}

extension HomeController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AudioCell.reuseID) as? AudioCell else {
            return AudioCell()
        }
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}
