//
//  ViewController.swift
//  stabuck
//
//  Created by kimrh on 2018. 8. 1..
//  Copyright © 2018년 kimrh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer  = Timer()
    var scrollviewver: UIScrollView?
    
    var scrWidth = UIScreen.main.bounds.width //화면 너비
    var scrHeight = UIScreen.main.bounds.height //화면 높이
    
    var imgdefault: UIImage?
    
    var txtTitleLabel: UILabel?
    var btnUSer: UIButton?
    var btnCard: UIButton?
    var btnSirenorder: UIButton?
    var btnEasyorder: UIButton?
    var btnCoupon: UIButton?
    var btnWhatsnew: UIButton?
    
    
    var lineViewer: UIView?
    var lineViewerVertical1: UIView?
    var lineViewerVertical2: UIView?
    var lineViewerHorizen1: UIView?
    var lineViewerHorizen2: UIView?
    
    
    let userImg: UIImage = UIImage(named: "ttttt")!
    let cardImg: UIImage = UIImage(named: "ttttt")!
    let sirenImg: UIImage = UIImage(named: "ttttt")!
    let easyorderImg: UIImage = UIImage(named: "ttttt")!
    
    var cardImgView:UIImageView?
    var txtCardBtnlabel: UILabel?
    
    var sirenOrderImgView:UIImageView?
    var txtSirenOrderBtnlabel: UILabel?
    
    var easyOrderImgView:UIImageView?
    var txtEasyOrderBtnlabel: UILabel?
    
    var txtCouponLabel: UILabel?
    var txtWhatsNeWLabel: UILabel?
    
    let progressBar = SBCirclularProgressBar()
    
    var progressValue: CGFloat = 0.8;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //self.navigationController?.navigationBar.isTranslucent = false;
        
        //CREATE OBJECT...
        
        scrollviewver = UIScrollView(frame: self.view.bounds)
        
        lineViewer = UIView()
        lineViewerVertical1 = UIView()
        lineViewerVertical2 = UIView()
        lineViewerHorizen1 = UIView()
        lineViewerHorizen2 = UIView()
        
        btnUSer = UIButton(type: .custom)
        btnCard = UIButton()
        btnSirenorder = UIButton()
        btnEasyorder = UIButton()
        btnCoupon  = UIButton()
        btnWhatsnew = UIButton()
        
        txtTitleLabel = UILabel()
        
        cardImgView = UIImageView(image: cardImg)
        txtCardBtnlabel = UILabel()
        
        sirenOrderImgView = UIImageView(image: sirenImg)
        txtSirenOrderBtnlabel = UILabel()
        
        easyOrderImgView = UIImageView(image: easyorderImg)
        txtEasyOrderBtnlabel = UILabel()
        
        txtCouponLabel = UILabel()
        txtWhatsNeWLabel = UILabel()
        
        //SETTING
      //  scrollviewver?.alwaysBounceVertical = true
        scrollviewver?.translatesAutoresizingMaskIntoConstraints = false
        scrollviewver?.backgroundColor = UIColor.black
      
        self.view.addSubview(scrollviewver!)
        
        self.scrollviewver?.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.scrollviewver?.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.scrollviewver?.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.scrollviewver?.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
        
        scrollviewver?.addSubview(txtTitleLabel!)
        txtTitleLabel?.translatesAutoresizingMaskIntoConstraints = false
        txtTitleLabel?.text = "test"
        txtTitleLabel?.textColor = UIColor.white
        txtTitleLabel?.leftAnchor.constraint(equalTo: (scrollviewver?.leftAnchor)!, constant: 0).isActive = true
        txtTitleLabel?.topAnchor.constraint(equalTo: (scrollviewver?.topAnchor)!, constant: 0).isActive = true
        txtTitleLabel?.frame = CGRect(x: 20 , y: 20, width: scrWidth, height: 30)
       
        
        //self.view.addSubview(txtTitleLabel!)
        
      
        btnUSer?.layer.borderColor = UIColor.white.cgColor
        btnUSer?.layer.borderWidth = 1.0
        //self.view.addSubview(btnUSer!)
        scrollviewver?.addSubview(btnUSer!)
        btnUSer?.translatesAutoresizingMaskIntoConstraints = false
        btnUSer?.leftAnchor.constraint(equalTo: (txtTitleLabel?.leftAnchor)!, constant: 0).isActive = true
        btnUSer?.topAnchor.constraint(equalTo: (txtTitleLabel?.bottomAnchor)!, constant: 10).isActive = true
        btnUSer?.widthAnchor.constraint(equalTo: (scrollviewver?.widthAnchor)!, multiplier: 0.5, constant: 11).isActive = true
        btnUSer?.heightAnchor.constraint(equalToConstant: 160).isActive = true
        
        
        progressBar.percent = 0.0
        progressBar.translatesAutoresizingMaskIntoConstraints = false
        btnUSer?.addSubview(progressBar)
        progressBar.centerYAnchor.constraint(equalTo: (progressBar.superview?.centerYAnchor)!).isActive = true
        progressBar.centerXAnchor.constraint(equalTo: (progressBar.superview?.centerXAnchor)!).isActive = true
        progressBar.widthAnchor.constraint(equalToConstant: 100).isActive = true
        progressBar.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
//        let userImageView = UIImageView(image: UIImage(named: "ttttt"))
//        userImageView.accessibilityLabel = "userImageView"
//        userImageView.translatesAutoresizingMaskIntoConstraints = false
//        btnUSer?.addSubview(userImageView)
//
//        userImageView.bottomAnchor.constraint(equalTo: (userImageView.superview?.centerYAnchor)!).isActive = true
//        userImageView.centerXAnchor.constraint(equalTo: (userImageView.superview?.centerXAnchor)!).isActive = true
        
        let userLabel = UILabel()
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        userLabel.text = "user"
        userLabel.textColor = UIColor.white
        btnUSer?.addSubview(userLabel)
        userLabel.topAnchor.constraint(equalTo: progressBar.bottomAnchor).isActive = true
        userLabel.centerXAnchor.constraint(equalTo: (userLabel.superview?.centerXAnchor)!).isActive = true
       
        scrollviewver?.addSubview(lineViewer!)
        //  self.view.addSubview(lineViewer!)
        lineViewer?.translatesAutoresizingMaskIntoConstraints = false
        lineViewer?.backgroundColor = UIColor.brown
        lineViewer?.leftAnchor.constraint(equalTo: (btnUSer?.rightAnchor)!, constant: 0).isActive=true
        lineViewer?.widthAnchor.constraint(equalToConstant: 2).isActive = true
        lineViewer?.centerYAnchor.constraint(equalTo: (btnUSer?.centerYAnchor)!, constant: 0).isActive = true
        lineViewer?.heightAnchor.constraint(equalTo: (btnUSer?.heightAnchor)!, multiplier: 1.0, constant: -20).isActive = true
        
        
        scrollviewver?.addSubview(btnCard!)
   //     self.view.addSubview(btnCard!)
        self.btnCard?.addSubview(cardImgView!)
        self.btnCard?.addSubview(txtCardBtnlabel!)
        
        btnCard?.translatesAutoresizingMaskIntoConstraints = false
        cardImgView?.translatesAutoresizingMaskIntoConstraints = false
        txtCardBtnlabel?.translatesAutoresizingMaskIntoConstraints = false
        txtCardBtnlabel?.text = "card"
        txtCardBtnlabel?.textColor = UIColor.white
        
        btnCard?.leftAnchor.constraint(equalTo: (lineViewer?.rightAnchor)!, constant: 0).isActive = true
        btnCard?.topAnchor.constraint(equalTo: (btnUSer?.topAnchor)!, constant: 0 ).isActive = true
        btnCard?.widthAnchor.constraint(equalTo: (scrollviewver?.widthAnchor)!, multiplier: 0.5, constant: 12).isActive = true
       
        cardImgView?.centerXAnchor.constraint(equalTo: (btnCard?.centerXAnchor)!, constant: 0).isActive = true
        cardImgView?.centerYAnchor.constraint(equalTo: (btnCard?.centerYAnchor)!, constant: 0).isActive = true
        
        txtCardBtnlabel?.topAnchor.constraint(equalTo: (cardImgView?.bottomAnchor)!, constant: 0).isActive = true
        txtCardBtnlabel?.leftAnchor.constraint(equalTo: (cardImgView?.leftAnchor)!, constant: 0).isActive = true
        
        scrollviewver?.addSubview(lineViewerHorizen1!)
   //     self.view.addSubview(lineViewerHorizen1!)
        lineViewerHorizen1?.translatesAutoresizingMaskIntoConstraints = false
        lineViewerHorizen1?.backgroundColor = UIColor.brown
        lineViewerHorizen1?.leftAnchor.constraint(equalTo: (btnUSer?.leftAnchor)!, constant: 0).isActive = true
        lineViewerHorizen1?.topAnchor.constraint(equalTo: (btnUSer?.bottomAnchor)!, constant: 0).isActive = true
        lineViewerHorizen1?.heightAnchor.constraint(equalToConstant: 2).isActive = true
        lineViewerHorizen1?.widthAnchor.constraint(equalTo: (scrollviewver?.widthAnchor)!, multiplier: 1.0, constant: -40).isActive = true
        
        scrollviewver?.addSubview(btnSirenorder!)
        //self.view.addSubview(btnSirenorder!)
        self.btnSirenorder?.addSubview(sirenOrderImgView!)
        self.btnSirenorder?.addSubview(txtSirenOrderBtnlabel!)
        
        scrollviewver?.addSubview(lineViewerVertical1!)
        //self.view.addSubview(lineViewerVertical1!)
        
        scrollviewver?.addSubview(btnEasyorder!)
        //self.view.addSubview(btnEasyorder!)
        self.btnEasyorder?.addSubview(easyOrderImgView!)
        self.btnEasyorder?.addSubview(txtEasyOrderBtnlabel!)
        
        btnSirenorder?.translatesAutoresizingMaskIntoConstraints = false
        sirenOrderImgView?.translatesAutoresizingMaskIntoConstraints = false
        txtSirenOrderBtnlabel?.translatesAutoresizingMaskIntoConstraints = false
        
        btnEasyorder?.translatesAutoresizingMaskIntoConstraints = false
        easyOrderImgView?.translatesAutoresizingMaskIntoConstraints = false
        txtEasyOrderBtnlabel?.translatesAutoresizingMaskIntoConstraints = false
        
        lineViewerVertical1?.translatesAutoresizingMaskIntoConstraints = false
        
        btnSirenorder?.leftAnchor.constraint(equalTo: (btnUSer?.leftAnchor)!, constant: 0).isActive = true
        btnSirenorder?.topAnchor.constraint(equalTo: (lineViewerHorizen1?.bottomAnchor)!, constant: 0).isActive = true
        btnSirenorder?.widthAnchor.constraint(equalTo: (scrollviewver?.widthAnchor)!, multiplier: 0.6, constant: -20 ).isActive = true
        btnSirenorder?.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        sirenOrderImgView?.centerXAnchor.constraint(equalTo: (btnSirenorder?.centerXAnchor)!, constant: 0).isActive = true
        sirenOrderImgView?.centerYAnchor.constraint(equalTo: (btnSirenorder?.centerYAnchor)!, constant: 0).isActive = true
        
        txtSirenOrderBtnlabel?.text = "SIREN ORDER"
        txtSirenOrderBtnlabel?.textColor = UIColor.white
        txtSirenOrderBtnlabel?.topAnchor.constraint(equalTo: (sirenOrderImgView?.bottomAnchor)!, constant: 0).isActive = true
        txtSirenOrderBtnlabel?.centerXAnchor.constraint(equalTo: (btnSirenorder?.centerXAnchor)!, constant: 0).isActive = true
        
        lineViewerVertical1?.backgroundColor = UIColor.brown
        lineViewerVertical1?.leftAnchor.constraint(equalTo: (btnSirenorder?.rightAnchor)!, constant: 0).isActive = true
        lineViewerVertical1?.widthAnchor.constraint(equalToConstant: 2).isActive = true
        lineViewerVertical1?.centerYAnchor.constraint(equalTo: (btnSirenorder?.centerYAnchor)!, constant: 0).isActive = true
        lineViewerVertical1?.heightAnchor.constraint(equalTo: (btnSirenorder?.heightAnchor)!, multiplier: 1.0, constant: -20).isActive = true
        
        
        btnEasyorder?.leftAnchor.constraint(equalTo: (lineViewerVertical1?.rightAnchor)!, constant: 0).isActive = true
        btnEasyorder?.topAnchor.constraint(equalTo: (lineViewerHorizen1?.bottomAnchor)!, constant: 0).isActive = true
        btnEasyorder?.widthAnchor.constraint(equalTo: (scrollviewver?.widthAnchor)!, multiplier: 0.4, constant: -20 ).isActive = true
        btnEasyorder?.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        easyOrderImgView?.centerXAnchor.constraint(equalTo: (btnEasyorder?.centerXAnchor)!, constant: 0).isActive = true
        easyOrderImgView?.centerYAnchor.constraint(equalTo: (btnEasyorder?.centerYAnchor)!, constant: 0).isActive = true
        
        txtEasyOrderBtnlabel?.text = "EASY ORDER"
        txtEasyOrderBtnlabel?.textColor = UIColor.white
        txtEasyOrderBtnlabel?.topAnchor.constraint(equalTo: (easyOrderImgView?.bottomAnchor)!, constant: 0).isActive = true
        txtEasyOrderBtnlabel?.centerXAnchor.constraint(equalTo: (btnEasyorder?.centerXAnchor)!, constant: 0).isActive = true
        
        scrollviewver?.addSubview(lineViewerHorizen2!)
        //self.view.addSubview(lineViewerHorizen2!)
        lineViewerHorizen2?.translatesAutoresizingMaskIntoConstraints = false
        lineViewerHorizen2?.backgroundColor = UIColor.brown
        
        lineViewerHorizen2?.leftAnchor.constraint(equalTo: (btnSirenorder?.leftAnchor)!, constant: 0).isActive = true
        lineViewerHorizen2?.topAnchor.constraint(equalTo: (btnSirenorder?.bottomAnchor)!, constant: 0).isActive = true
        lineViewerHorizen2?.heightAnchor.constraint(equalToConstant: 2).isActive = true
        lineViewerHorizen2?.widthAnchor.constraint(equalTo: (scrollviewver?.widthAnchor)!, multiplier: 1.0, constant: -40).isActive = true
        
        scrollviewver?.addSubview(btnCoupon!)
        //self.view.addSubview(btnCoupon!)
        self.btnCoupon?.addSubview(txtCouponLabel!)
        scrollviewver?.addSubview(btnWhatsnew!)
       // self.view.addSubview(btnWhatsnew!)
        self.btnWhatsnew?.addSubview(txtWhatsNeWLabel!)
        scrollviewver?.addSubview(lineViewerVertical2!)
        //self.view.addSubview(lineViewerVertical2!)
        
        btnCoupon?.translatesAutoresizingMaskIntoConstraints = false
        btnWhatsnew?.translatesAutoresizingMaskIntoConstraints = false
        txtCouponLabel?.translatesAutoresizingMaskIntoConstraints = false
        txtWhatsNeWLabel?.translatesAutoresizingMaskIntoConstraints = false
        lineViewerVertical2?.translatesAutoresizingMaskIntoConstraints = false
        
        btnCoupon?.leftAnchor.constraint(equalTo: (btnUSer?.leftAnchor)!, constant: 0).isActive = true
        btnCoupon?.topAnchor.constraint(equalTo: (lineViewerHorizen2?.bottomAnchor)!, constant: 0).isActive = true
        btnCoupon?.widthAnchor.constraint(equalTo: (scrollviewver?.widthAnchor)!, multiplier: 0.5, constant: -20 ).isActive = true
        btnCoupon?.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        txtCouponLabel?.centerXAnchor.constraint(equalTo: (btnCoupon?.centerXAnchor)!, constant: 0).isActive = true
        txtCouponLabel?.centerYAnchor.constraint(equalTo: (btnCoupon?.centerYAnchor)!, constant: 0).isActive = true
        txtCouponLabel?.lineBreakMode = .byWordWrapping
        txtCouponLabel?.numberOfLines = 3
        txtCouponLabel?.text = "e-coupon\ngift"
        txtCouponLabel?.textColor = UIColor.white
        
        lineViewerVertical2?.backgroundColor = UIColor.brown
        lineViewerVertical2?.leftAnchor.constraint(equalTo: (btnCoupon?.rightAnchor)!, constant: 0).isActive = true
        lineViewerVertical2?.widthAnchor.constraint(equalToConstant: 2).isActive = true
        lineViewerVertical2?.centerYAnchor.constraint(equalTo: (btnCoupon?.centerYAnchor)!, constant: 0).isActive = true
        lineViewerVertical2?.heightAnchor.constraint(equalTo: (btnCoupon?.heightAnchor)!, multiplier: 1.0, constant: -20).isActive = true
        
        
        btnWhatsnew?.leftAnchor.constraint(equalTo: (lineViewerVertical2?.rightAnchor)!, constant: 0).isActive = true
        btnWhatsnew?.topAnchor.constraint(equalTo: (lineViewerHorizen2?.bottomAnchor)!, constant: 0).isActive = true
        btnWhatsnew?.widthAnchor.constraint(equalTo: (scrollviewver?.widthAnchor)!, multiplier: 0.5, constant: -20 ).isActive = true
        btnWhatsnew?.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        txtWhatsNeWLabel?.centerXAnchor.constraint(equalTo: (btnWhatsnew?.centerXAnchor)!, constant: 0).isActive = true
        txtWhatsNeWLabel?.centerYAnchor.constraint(equalTo: (btnWhatsnew?.centerYAnchor)!, constant: 0).isActive = true
        txtWhatsNeWLabel?.lineBreakMode = .byWordWrapping
        txtWhatsNeWLabel?.numberOfLines = 2
        txtWhatsNeWLabel?.text = "whats'\nnew"
        txtWhatsNeWLabel?.textColor = UIColor.white
        
        btnCoupon?.bottomAnchor.constraint(equalTo: (scrollviewver?.bottomAnchor)!).isActive = true
        runTimer()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
       
    }
    
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait, .landscape]
    }

    func runTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: (#selector(ViewController.UpdateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func UpdateTimer(){
        
        let val = progressBar.percent
        if( val < progressValue) {
            progressBar.percent = val + 0.025
            progressBar.configure()
        }
        else{
            timer.invalidate()
        }
    }

}
