//
//  AlbumViewModel.swift
//  CVVM
//
//  Created by Tibor Bödecs on 2018. 04. 12..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import UIKit

class AlbumViewModel: CollectionViewViewModel<AlbumCell, Album> {
    
    override func config(cell: AlbumCell, data: Album, indexPath: IndexPath, grid: Grid) {
        cell.textLabel.text = data.artirst
        cell.detailTextLabel.text = data.name
        cell.imageView.image = UIImage(named: data.image)
    }
    
    override func size(data: Album, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        if
            (view.traitCollection.userInterfaceIdiom == .phone && view.traitCollection.verticalSizeClass == .compact) ||
            view.traitCollection.userInterfaceIdiom == .pad
        {
            return grid.size(for: view, ratio: 1.2, items: 1, gaps: 3)
        }
        return grid.size(for: view, ratio: 1.2, items: 2, gaps: 1)
    }

}
