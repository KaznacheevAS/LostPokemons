//
//  ListPokemonsTableViewController.swift
//  LostPokemons
//
//  Created by Anton Kaznacheev on 28.04.2022.
//

import UIKit

class ListPokemonsTableViewController: UITableViewController {

    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        fetchEpisode()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        23
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)


        return cell
    }
   
}
