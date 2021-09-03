//
//  DetailsViewController.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 25/07/21.
//

import Foundation
import UIKit
import Kingfisher
class DetailsViewController: UIViewController{
    
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var detailsName: UILabel!
    @IBOutlet weak var detailsStatus: UILabel!
    @IBOutlet weak var detailsSpecies: UILabel!
    @IBOutlet weak var detailsGender: UILabel!
    
    var details: FactModel?
    
    
    
    override func viewDidLoad() {
        setupUI()
        
        let url = URL(string: details!.image)
        detailsImage.kf.setImage(with: url)
        detailsName.text = details?.name
        detailsStatus.text = details?.status
        detailsSpecies.text = details?.species
        detailsGender.text = details?.gender
    }
    
    private func setupUI()
    {
        imageView.layer.cornerRadius = 25
        imageView.layer.shadowOpacity = 0.9
        imageView.layer.shadowColor = UIColor.white.cgColor
        imageView.layer.shadowRadius = 20
        imageView.layer.shadowOffset = .zero
        
        detailsView.layer.cornerRadius = 25
        detailsView.layer.shadowOpacity = 0.9
        detailsView.layer.shadowColor = UIColor.white.cgColor
        detailsView.layer.shadowRadius = 20
        detailsView.layer.shadowOffset = .zero
    }
}
