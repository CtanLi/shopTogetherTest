//
//  Carousel.swift
//  shopTogether
//
//  Created by CtanLI on 2019-08-03.
//  Copyright © 2019 shopTogether. All rights reserved.
//

import UIKit

class Carousel: UITableViewHeaderFooterView {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageCarouselViewer: UIView!
    
    class var customView : Carousel {
        let cell = Bundle.main.loadNibNamed("Carousel", owner: self, options: nil)?.last
        return cell as! Carousel
    }
}
