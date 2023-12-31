//
//  ImagePreviewController.swift
//  NewFramWork
//
//  Created by undhad kaushik on 08/07/23.
//

import Foundation
import UIKit
import Kingfisher

class ImagePreviewController: UIViewController {
    var imagePreviewView = UIImageView()

    init(img: SingleImageItem) {
        super.init(nibName: nil, bundle: nil)
        imagePreviewView.kf.indicatorType = .activity
        imagePreviewView.kf.setImage(with: URL(string: img.mainImage?.url ?? ""))
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePreviewView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imagePreviewView)
        imagePreviewView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imagePreviewView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imagePreviewView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imagePreviewView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imagePreviewView.contentMode = .scaleAspectFit
    }
}

