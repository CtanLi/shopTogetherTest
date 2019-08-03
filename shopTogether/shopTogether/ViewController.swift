//
//  ViewController.swift
//  shopTogether
//
//  Created by CtanLI on 2019-08-03.
//  Copyright © 2019 shopTogether. All rights reserved.
//

import UIKit
import FSPagerView

class ViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    let headerReuseId = "TableHeaderViewReuseId"
    var pagerView = FSPagerView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 240))
    var pageControl = FSPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let headerNib = UINib(nibName: "Carousel", bundle: nil)
        self.tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: headerReuseId)
        
        //
        //Mark pageviewer
        //
        pagerView.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 400)
        pagerView.interitemSpacing = 10
        pagerView.isInfinite = false
        pagerView.transformer = FSPagerViewTransformer(type: .crossFading)
        pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
    }

}

extension ViewController {
//    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
//
//    }
//
//    func numberOfItems(in pagerView: FSPagerView) -> Int {
//        return 1
//    }
}
