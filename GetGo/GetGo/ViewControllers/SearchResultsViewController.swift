//
//  SearchResultsViewController.swift
//  GetGo
//
//  Created by Zaw Zin Phyo on 10/10/2021.
//

import UIKit

class SearchResultsViewController: UIViewController, Storyboarded {

    static var storyboardName: String = Constants.Storyboard.main
    
    @IBOutlet weak var tblResults: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpTableView()
    }
    
    fileprivate func setUpTableView() {
        tblResults.dataSource = self
        tblResults.delegate = self
        tblResults.register(nib: SearchResultCell.className, bundle: nil)
        tblResults.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
    }

    @IBAction func didTappedBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension SearchResultsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SearchResultCell.className, for: indexPath) as! SearchResultCell
        
        return cell
     }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = BookingViewController.instantiate()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
