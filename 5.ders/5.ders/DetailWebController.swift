//
//  DetailWebController.swift
//  5.ders
//
//  Created by selin eylül bilen on 1/12/21.
//

import UIKit
import WebKit

class DetailWebController: UIViewController, WKNavigationDelegate{

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.webView.navigationDelegate = self
        
        /*
        let url = "https://selinbilen.github.io"
        let req_url = URL(string: url)
        let req = URLRequest(url: req_url!)
        webView.load(req)*/
        
        let htmlString = "<!doctype html> <html lang='en'> <head> <title>Title</title> <!-- Required meta tags --> <meta charset='utf-8'> <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'> <!-- Bootstrap CSS --> <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'> </head> <body> <div class='container'> <p style='text-align: center;'><span style='font-size: 14px;'>&rarr; This is a full-featured demo. Try it and see for yourself!&nbsp;</span><span style='font-size:14px;'>&larr;</span></p> <p style='text-align: center;'> <br><span style='font-size: 24px;'><span style='color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif;'>Froala Editor is a lightweight WYSIWYG HTML Editor written in Javascript that enables rich text editing capabilities for your applications.</span></span><span class='fr-img-caption fr-dib fr-rounded fr-shadow' style='width: 203px;'><span class='fr-img-wrap'><img src='https://froala.com/wp-content/themes/jupiterx-child/assets/images/editor/pages/v3/editor-photo.png' alt='Editor photo'><span class='fr-inner'>This is an image caption.</span></span></span></p> <table class='fr-dashed-borders fr-alternate-rows' style='width: 100%;'> <tbody> <tr> <td style='text-align: center;'><span style='font-size: 24px;'>Complete<a href='https://froala.com/wysiwyg-editor/docs/' title='Documentation'>&nbsp;<strong>documentation</strong></a>&nbsp;</span><span class='fr-emoticon fr-deletable fr-emoticon-img' style='background: url('https://cdnjs.cloudflare.com/ajax/libs/emojione/2.0.1/assets/svg/1f4da.svg'); font-size: 24px;'>&nbsp;</span> <br> </td> <td style='text-align: center;'><span style='font-size: 24px;'>Framework <strong><a href='https://froala.com/wysiwyg-editor/docs/framework-plugins/'>plugins</a></strong>&nbsp;</span><span class='fr-emoticon fr-deletable fr-emoticon-img' style='background: url('https://cdnjs.cloudflare.com/ajax/libs/emojione/2.0.1/assets/svg/1f50c.svg'); font-size: 24px;'>&nbsp;</span> <br> </td> <td style='text-align: center;'><span style='color: rgb(0, 0, 0); font-size: 24px;'>Tons of&nbsp;</span><strong><span style='font-size: 24px;'><a href='https://froala.com/wysiwyg-editor/examples/'>examples</a>&nbsp;</span></strong><span class='fr-emoticon fr-deletable fr-emoticon-img' style='background: url('https://cdnjs.cloudflare.com/ajax/libs/emojione/2.0.1/assets/svg/1f320.svg'); font-size: 24px;'>&nbsp;</span> <br> </td> </tr> </tbody> </table> </div> <!-- Optional JavaScript --> <!-- jQuery first, then Popper.js, then Bootstrap JS --> <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js' integrity='sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo' crossorigin='anonymous'></script> <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js' integrity='sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1' crossorigin='anonymous'></script> <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' integrity='sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM' crossorigin='anonymous'></script> </body> </html>"
        
        webView.loadHTMLString(htmlString, baseURL: nil)
    }
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!){
        print("didCommit")
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!){
        print("didFinish")
    }
}
