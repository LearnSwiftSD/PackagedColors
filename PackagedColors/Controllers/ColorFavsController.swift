//
//  ColorFavsController.swift
//  ColorFav
//
//  Created by Stephen Martinez on 7/16/18.
//  Copyright © 2018 Stephen Martinez. All rights reserved.
//

import UIKit
import Combine

class ColorFavsController: UIViewController {
    
    @IBOutlet weak var colorFavsList: UITableView!
    var cancellables = Cancellables()
    let colorStore = Store<FavColor>()
    
    // MARK: - Assign/Create The Diffable DataSource `dataSource`
    lazy var dataSource = {
        UITableViewDiffableDataSource<DefaultSection, FavColor>(
            tableView: colorFavsList,
            cellProvider: colorFavCell
        )
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: Apply the initial Snapshot
        colorFavsList.delegate = self
        bindPublishers()
        dataSource.apply(colorFavSnapshot(colorStore.all), animatingDifferences: false)
    }
    
    // MARK: - Create a snapshot provider `colorFavSnapshot`
    private func colorFavSnapshot(_ newColors: [FavColor]) -> NSDiffableDataSourceSnapshot<DefaultSection, FavColor> {
        var snapshot = NSDiffableDataSourceSnapshot<DefaultSection, FavColor>()
        snapshot.appendSections([.main])
        snapshot.appendItems(newColors)
        return snapshot
    }
    
    // MARK: - Create a Cell Provider `colorFavCell`
    private var colorFavCell: (UITableView, IndexPath, FavColor) -> UITableViewCell? {
        return { tableView, indexPath, favColor in
            let cFavCell = ColorFavCell.create()
            cFavCell.colorView.shiftTo(favColor.color)
            cFavCell.nameLabel.text = favColor.name
            cFavCell.hexLabel.text = favColor.color.hex
            return cFavCell
        }
    }
    
    // MARK: - Persistence Actions / update with Snapshot updates
    private var saveAction: ([FavColor]) -> Void {
        return { [weak self] in
            guard let self = self else { return }
            var snapshot = self.dataSource.snapshot()
            
            guard let first = snapshot.itemIdentifiers.first else {
                snapshot.appendItems($0)
                self.dataSource.apply(snapshot)
                return
            }
            
            snapshot.insertItems($0, beforeItem: first)
            self.dataSource.apply(snapshot)
        }
    }
    
    private var editAction: ([FavColor]) -> Void {
        return { [weak self] in
            guard let self = self else { return }
            let snapshot = self.colorFavSnapshot($0)
            self.dataSource.apply(snapshot)
        }
    }
    
    private var deleteAction: ([FavColor]) -> Void {
        return { [weak self] in
            guard let self = self else { return }
            var snapshot = self.dataSource.snapshot()
            snapshot.deleteItems($0)
            self.dataSource.apply(snapshot)
        }
    }
    
    func bindPublishers() {
        colorStore.didSave
            .print("DidSave")
            .supply(to: saveAction)
            .store(in: &cancellables)
        
        colorStore.didUpdate
            .print("DidUpdate")
            .supply(to: editAction)
            .store(in: &cancellables)
        
        colorStore.didDelete
            .print("DidDelete")
            .supply(to: deleteAction)
            .store(in: &cancellables)
    }
    
    @IBAction func createFavColor(_ sender: Any) {
        let controller = ColorSaveController.create()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

// MARK: - TableView Methods
extension ColorFavsController: UITableViewDelegate {

    // MARK: Update with new DiffableDataSource API
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let color = dataSource.itemIdentifier(for: indexPath) else { return }
        let controller = ColorEditController.create(with: color)
        navigationController?.pushViewController(controller, animated: true)
    }

}

// MARK: - Create DiffableDataSource TableView Sections
enum DefaultSection { case main }
