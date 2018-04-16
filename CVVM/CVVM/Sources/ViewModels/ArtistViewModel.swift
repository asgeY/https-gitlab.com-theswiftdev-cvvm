//
//  ArtistViewModel.swift
//  CVVM
//
//  Created by Tibor Bödecs on 2018. 04. 13..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import UIKit

protocol ArtistViewModelDelegate: class {
    func didSelect(artist: Artist)
}

class ArtistViewModel: CollectionViewViewModel<ArtistCell, Artist> {
    
    weak var delegate: ArtistViewModelDelegate?
    
    override func config(cell: ArtistCell, data: Artist, indexPath: IndexPath, grid: Grid) {
        cell.textLabel.text = data.name
        cell.imageView.image = UIImage(named: data.image)
    }
    
    override func size(data: Artist, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        if
            (view.traitCollection.userInterfaceIdiom == .phone && view.traitCollection.verticalSizeClass == .compact) ||
                view.traitCollection.userInterfaceIdiom == .pad
        {
            return grid.size(for: view, ratio: 1.2, items: 1, gaps: 3)
        }
        return grid.size(for: view, ratio: 1.2, items: 2, gaps: 1)
    }
    
    override func callback(data: Artist, indexPath: IndexPath) {
        self.delegate?.didSelect(artist: data)
    }
}

class HorizontalArtistViewModel: ArtistViewModel {

    override func size(data: Artist, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        return CGSize(width: 150, height: 180)
        //return grid.size(for: view, height: 160)
    }
}
