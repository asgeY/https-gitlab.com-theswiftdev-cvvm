//
//  ViewController.swift
//  CVVM
//
//  Created by Tibor Bödecs on 2018. 04. 12..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import UIKit

class ViewController: CollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let albums = [
            Album(artirst: "August Burns Red", name: "Constellations", image: "01"),
            Album(artirst: "Breakdown of Sanity", name: "Mirrors", image: "02"),
            Album(artirst: "Currents", name: "The place I feel safest", image: "03"),
            Album(artirst: "Make Them Suffer", name: "Neverbloom", image: "04"),
            Album(artirst: "Parkway Drive", name: "Reverence", image: "05"),
            Album(artirst: "The Haunted", name: "Exit wounds", image: "06"),
            Album(artirst: "Upon a Burning Body", name: "Red White Green", image: "07"),
            Album(artirst: "Whitechapel", name: "Our endless war", image: "08"),
        ]
        
        let items = albums.map { AlbumViewModel($0) }
        let grid = Grid(columns: 4, margin: UIEdgeInsets(all: 8))
        let section = CollectionViewSection(items: items)
        self.source  = CollectionViewSource(grid: grid, sections: [section])
        self.collectionView.reloadData()
    }
}
