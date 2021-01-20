//
//  MainViewController.swift
//  Twittter
//
//  Created by famio on 2021/01/20.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView! {
        
        didSet {
            
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    @IBOutlet private weak var tweeeetButton: UIButton! {
        
        didSet {
            
            tweeeetButton.layer.cornerRadius = 30
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
}

private extension MainViewController {
    
    @IBAction func didTapTweeeetButton(_ sender: UIButton) {
        
        let tweeetStoryBoard = UIStoryboard(name: "Tweeeet", bundle: nil)
        guard let tweeetViewController = tweeetStoryBoard.instantiateInitialViewController() else { return }
        self.present(tweeetViewController, animated: true, completion: nil)
    }
}

extension MainViewController: UITableViewDelegate {
    
}

extension MainViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
}
