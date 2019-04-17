//
//  ViewController.swift
//  Toys
//
//  Created by JLM on 2019/4/12.
//  Copyright © 2019 JLM. All rights reserved.
//

import UIKit
import FSPagerView
import RxSwift
import SnapKit

class ViewController: UIViewController {
    
    private var container: UIView?
    private var swiper: FSPagerView?
    private var swiperControl: FSPageControl?
    private let imageNames: [String] = ["banner", "banner", "banner", "banner", "banner"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "共享玩具"
        configureUI()
    }
    
    private func configureUI() {
        container = UIView()
        guard let container = container else { return }
        container.backgroundColor = UIColor.ccw.hex(0xffffff)
        view.addSubview(container)
        container.snp.makeConstraints { (make) in
            make.top.equalTo(topLayoutGuide.snp.bottom)
            make.left.bottom.right.equalToSuperview()
        }
        swiper = FSPagerView()
        guard let swiper = swiper else { return }
        swiper.backgroundColor = .white
        swiper.automaticSlidingInterval = 2.5
        swiper.isInfinite = true
        swiper.dataSource = self
        swiper.delegate = self
        swiper.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        swiper.itemSize = FSPagerView.automaticSize
        container.addSubview(swiper)
        swiper.snp.makeConstraints { (make) in
            make.top.centerX.width.equalToSuperview()
            make.height.equalTo(view.snp.width).multipliedBy(80.0 / 118.0)
        }
        
        swiperControl = FSPageControl()
        guard let swiperControl = swiperControl else { return }
        swiperControl.numberOfPages = imageNames.count
        // 设置下标位置
        swiperControl.contentHorizontalAlignment = .center
        swiperControl.setStrokeColor(.gray, for: .normal)
        swiperControl.setStrokeColor(.white, for: .selected)
        swiperControl.setFillColor(.clear, for: .normal)
        swiperControl.setFillColor(.white, for: .selected)
        swiperControl.setPath(UIBezierPath.init(roundedRect: CGRect.init(x: 0, y: 0, width: 5, height: 5), cornerRadius: 4.0), for: .normal)
        swiperControl.setPath(UIBezierPath(ovalIn: CGRect(x: 0, y: -1.5, width: 8, height: 8)), for: .selected)
        container.addSubview(swiperControl)
        swiperControl.snp.makeConstraints { (make) in
            make.centerX.equalTo(swiper)
            make.bottom.equalTo(swiper).offset(-7)
        }
    }
}

extension ViewController: FSPagerViewDataSource, FSPagerViewDelegate {
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return imageNames.count
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.backgroundColor = .white
        cell.imageView?.image = UIImage(named: self.imageNames[index])
        cell.layer.cornerRadius = 4.0
        cell.imageView?.layer.cornerRadius = 4.0
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.clipsToBounds = true
        return cell
    }
    
    func pagerViewWillEndDragging(_ pagerView: FSPagerView, targetIndex: Int) {
        swiperControl?.currentPage = targetIndex
    }
    
    func pagerViewDidEndScrollAnimation(_ pagerView: FSPagerView) {
        swiperControl?.currentPage = swiper?.currentIndex ?? 0
    }
}
