//
//  ViewController.swift
//  Marmot-iOS
//
//  Created by linhey on 2018/7/4.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import WebKit
import JavaScriptCore
import SnapKit
import Marmot

class ViewController: UIViewController {
  
  let webview = MarmotWebView()
  let relaodBtn = UIButton()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(webview)
    view.addSubview(relaodBtn)
    
    relaodBtn.snp.makeConstraints { (make) in
      make.left.equalToSuperview()
      make.top.equalTo(bottom)
      make.width.height.equalTo(50)
    }
    
    webview.snp.makeConstraints { (make) in
      make.top.bottom.right.left.equalToSuperview()
    }
    
    
    relaodBtn.backgroundColor = UIColor.red
    
    
    relaodBtn.addTarget(self, action: #selector(reload), for: UIControlEvents.touchUpInside)
    
    
    let url = URL(string: "http://localhost:8080/#/device")!
    webview.load(URLRequest(url: url))
  }
  
 @objc func reload() {
    webview.reload()
  }


}
