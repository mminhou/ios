//
//  WebViewTableViewCell.swift
//  InstagramFeed
//
//  Created by 최민호 on 2022/05/26.
//

import UIKit
import WebKit
import SnapKit

class WebViewTableViewCell: UITableViewCell, WKUIDelegate, WKNavigationDelegate {
    @IBOutlet weak var superView: UIView!
    var webView: WKWebView = WKWebView()
    override func awakeFromNib() {
        super.awakeFromNib()
        let url = URL(string: "https://www.naver.com/")
        let request = URLRequest(url: url!)
        webView.load(request)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        superView.addSubview(webView)
        webView.snp.makeConstraints{ v in
            v.leading.trailing.bottom.top.equalToSuperview()
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
