/*
 
 Copyright © 2022 Max Reshetov, Valentina Selezneva.
 All rights reserved.
 
*/

import UIKit

extension SearchView: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        if isSearching {
            guard let searched = searchedCitiesViewModel else { return 1 }
            return 1 + searched.count
        } else {
            guard let saved = savedCitiesViewModel else { return 1 }
            return 1 + saved.count
        }
    }
    
    func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        return Size.cell.search
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "geoCell",
                for: indexPath
            ) as! GeolocationTableViewCell
            cell.delegate = self
            return cell
            
        } else {
            if isSearching {
                let cell = tableView.dequeueReusableCell(
                    withIdentifier: "searchedCityCell",
                    for: indexPath
                ) as! SearchedCityTableViewCell
                cell.delegate = self
                cell.contentView.tag = indexPath.row - 1
                cell.cityViewModel = searchedCitiesViewModel?[indexPath.row - 1]
                return cell
                
            } else {
                let cell = tableView.dequeueReusableCell(
                    withIdentifier: "savedCityCell",
                    for: indexPath
                ) as! SavedCityTableViewCell
                cell.delegate = self
                cell.contentView.tag = indexPath.row - 1
                cell.cityViewModel = savedCitiesViewModel?[indexPath.row - 1]
                return cell
            }
        }
    }
    
}
