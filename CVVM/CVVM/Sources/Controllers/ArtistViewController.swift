//
//  ArtistViewController.swift
//  CVVM
//
//  Created by Tibor Bödecs on 2018. 04. 13..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import UIKit

class ArtistViewController: CollectionViewController {
    
    var artist: Artist!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.artist.name
        
        let bio = """
        Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nulla vitae elit libero, a pharetra augue. Maecenas sed diam eget risus varius blandit sit amet non magna.

        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

        Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Donec sed odio dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.

        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Curabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.
        """
        
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
        
        let grid = Grid(columns: 1, margin: UIEdgeInsets(all: 8))
        
        let items = albums.map { album -> AlbumViewModel in
            let viewModel = AlbumViewModel(album)
            return viewModel
        }

        let albumSection = CollectionViewSection(items: [DynamicTextViewModel(bio)])
        albumSection.header = HeaderViewModel("Biography")
        
        self.source = CollectionViewSource(grid: grid, sections: [albumSection])
        self.collectionView.reloadData()
    }
    
}

