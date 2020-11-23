//
//  SDDSVouncher.swift
//  test_voucher
//
//  Created by Ngo Van Quan on 11/19/20.
//  Copyright © 2020 Ngo Van Quan. All rights reserved.
//

import UIKit
import QuartzCore

class SDDSVoucher: UIView {
    private var voucherData:VoucherData?
    //super
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet var superView: UIView!
    //left
    @IBOutlet weak var leftContainer: UIView!
    @IBOutlet weak var issuerAvatar: UIImageView!
    @IBOutlet weak var issuerName: UILabel!
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var sub1Title: UILabel!
    @IBOutlet weak var sub1Content: UILabel!
    @IBOutlet weak var shopPlus: UIImageView!
    @IBOutlet weak var tag1Text: UILabel!
    @IBOutlet weak var tag1View: UIView!
    @IBOutlet weak var tag2Text: UILabel!
    @IBOutlet weak var tag2View: UIView!
    //right
    @IBOutlet weak var badgeView: UIView!
    @IBOutlet weak var badgeText: UILabel!
    @IBOutlet weak var voucherCode: UILabel!
    @IBOutlet weak var actionButtonView: UIView!
    @IBOutlet weak var actionButtonText: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
    }
    
    public func bindData(data: VoucherData? = nil) {
        voucherData = data
        setupUIFromData(data: data)
    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        setupInitialUI()
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: "SDDSVoucher", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    private func setupInitialUI() {
        //set shadow for view
        self.superView.layer.shadowColor = UIColor.black.cgColor
        self.superView.layer.shadowPath = UIBezierPath(rect: self.superView.bounds).cgPath
        self.superView.layer.shouldRasterize = true
        self.superView.layer.shadowOpacity = 0.12
        self.superView.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        self.superView.layer.shadowRadius = 8.0
        
        self.shadowView.layer.shadowColor = UIColor.black.cgColor
        self.shadowView.layer.shadowPath = UIBezierPath(rect: self.shadowView.bounds).cgPath
        self.shadowView.layer.shouldRasterize = true
        self.shadowView.layer.shadowOpacity = 0.04
        self.shadowView.layer.shadowOffset = CGSize(width: 0.0, height: -2.0)
        self.shadowView.layer.shadowRadius = 4.0
        
        //set bagde
        self.badgeText.text = "123456789"
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.05) {
            self.badgeView.roundCorners(topLeft: 0, topRight: 10, bottomLeft: 15, bottomRight: 0)
        }
        //voucher code
        self.voucherCode.text = "0x13456"

        //action button
        self.actionButtonText.text = "mua ngay"
        //leftContainer
       
    }
    
    private func setupUIFromData(data: VoucherData? = nil) {
        //issuer
        self.issuerName.text = data?.issuer?.issuerName
        
        //mainText
        self.mainText.text = data?.mainTitle?.title
        self.mainText.textColor = data?.mainTitle?.color
        
        //subText1
        self.sub1Title.text = data?.subItem1?.title
        self.sub1Content.text = data?.subItem1?.content
        self.sub1Content.textColor = data?.subItem1?.contentColor
        
        //shopPlus
        if(data?.isShopPlus == true) {
            self.shopPlus.isHidden = false
        } else {
            self.shopPlus.isHidden = true
        }
        
        //tag1
        if(data?.tag1 == nil) {
            self.tag1View.isHidden = true
        } else {
            self.tag1View.isHidden = false
            self.tag1Text.text = data?.tag1
        }
        
        //tag2
        if(data?.tag2 == nil) {
                  self.tag2View.isHidden = true
        } else {
          self.tag2View.isHidden = false
          self.tag2Text.text = data?.tag2
        }
        
        //badge
        if(data?.badge == nil) {
          self.badgeView.isHidden = true
        } else {
          self.badgeView.isHidden = false
          self.badgeText.text = data?.badge?.text
          self.badgeView.backgroundColor = data?.badge?.background
        }
    }
}
