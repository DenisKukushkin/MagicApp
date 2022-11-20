//
//  MagicianListViewController.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

import UIKit

class MagicianListViewController: UITableViewController {
    
    var user: User!
    private var magicianList = Magician.getMagicianList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        magicianList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let magician = magicianList[indexPath.row]
        
        content.text = magician.song
        content.secondaryText = magician.name
        content.image = UIImage(named: magician.song)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let magician = magicianList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: magician)
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentMagician = magicianList.remove(at: sourceIndexPath.row)
        magicianList.insert(currentMagician, at: destinationIndexPath.row)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? MagicianDetailsViewController else { return }
        detailsVC.magician = sender as? Magician
    }

}
