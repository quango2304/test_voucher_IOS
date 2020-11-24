//
//  SDDSVouncher.swift
//  test_voucher
//
//  Created by Ngo Van Quan on 11/19/20.
//  Copyright © 2020 Ngo Van Quan. All rights reserved.
//

import UIKit
import QuartzCore

class SDDSVoucherCard2: UIView {
    private var voucherData:SDDSVoucherCard2Data?
    //super
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet var superView: UIView!
    @IBOutlet weak var selectedIndicator: UIView!
    @IBOutlet weak var roundCornerView: UIView!
    @IBOutlet weak var voucherShape: VoucherShape!
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
    let containerView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
    }
    
    public func bindData(data: SDDSVoucherCard2Data? = nil) {
        voucherData = data
        setupUIFromData(data: data)
    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        setupInitialUI()
        fakeUI()
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: "SDDSVoucherCard2", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    private func setupInitialUI() {
        //set shadow for view
        //set bagde
//        self.badgeText.text = "123456789"
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.05) {
            self.badgeView.roundCorners(corners: .bottomLeft, radius: 15.0)
        }
    }
    
    private func fakeUI() {
        let _: SDDSVoucherCard2Data = SDDSVoucherCard2Data(
            type: SDDSVoucherCard2Type.full, issuer: SDDSVoucherCard2IssuerData(issuerAvatar: "google.com", issuerName: "Quan"), mainTitle: SDDSVoucherCard2MainTitleData(title: "MainTititle data", color: #colorLiteral(red: 0.9962446094, green: 0.7653861642, blue: 0.01027479768, alpha: 1)), subItem1: SDDSVoucherCard2SubItemData(title: "HSD", content: "00:00 23/04/1998"), isShopPlus: true, tag1: "tag1111", tag2: "tag2222", actionButton: SDDSVoucherCard2ActionButtonData(text: "Mua ngay", disable: false, backgroundColor: #colorLiteral(red: 0.9962446094, green: 0.7653861642, blue: 0.01027479768, alpha: 1)), voucherCode: "vouhcercode", badge: SDDSVoucherCard2BadgeData(text: "x10", background: #colorLiteral(red: 0.9962446094, green: 0.7653861642, blue: 0.01027479768, alpha: 1)), isDisabled: false)
        let data2: SDDSVoucherCard2Data = SDDSVoucherCard2Data(
            type: SDDSVoucherCard2Type.full, issuer: SDDSVoucherCard2IssuerData(issuerAvatar: "google.com", issuerName: "Quan"), mainTitle: SDDSVoucherCard2MainTitleData(title: "MainTititlasdfddadsfasfasdfadsfasasdasdfasdgf", color: #colorLiteral(red: 0.9962446094, green: 0.7653861642, blue: 0.01027479768, alpha: 1)), subItem1: SDDSVoucherCard2SubItemData(title: "HSD", content: "00:00 23/04/1998", contentColor: #colorLiteral(red: 0.7184622884, green: 0.7336550951, blue: 0.7498299479, alpha: 1)), isShopPlus: true, tag1: "tag1111" , actionButton: SDDSVoucherCard2ActionButtonData(text: "Mua ngay", disable: true, backgroundColor: #colorLiteral(red: 0.9962446094, green: 0.7653861642, blue: 0.01027479768, alpha: 1)), badge: SDDSVoucherCard2BadgeData(text: "x10", background: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), isDisabled: false, isSelected: false)
        bindData(data: data2)
    }
    
    private func showShadow() {
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
    }
    
    private func hideShadow() {
        self.superView.layer.shadowColor = UIColor.black.cgColor
        self.superView.layer.shadowPath = UIBezierPath(rect: self.superView.bounds).cgPath
        self.superView.layer.shouldRasterize = true
        self.superView.layer.shadowOpacity = 0.0
        self.superView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.superView.layer.shadowRadius = 0.0
        
        self.shadowView.layer.shadowColor = UIColor.black.cgColor
        self.shadowView.layer.shadowPath = UIBezierPath(rect: self.shadowView.bounds).cgPath
        self.shadowView.layer.shouldRasterize = true
        self.shadowView.layer.shadowOpacity = 0.0
        self.shadowView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.shadowView.layer.shadowRadius = 0.0
    }
    
    private func setupUIFromData(data: SDDSVoucherCard2Data? = nil) {
        //selected
        if(data?.isSelected == true) {
            self.selectedIndicator.isHidden = false
        } else {
            self.selectedIndicator.isHidden = true
        }
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
        
        //vouchercode
        if(data?.voucherCode == nil || data?.voucherCode == "") {
            self.voucherCode.isHidden = true
        } else {
            self.voucherCode.isHidden = false
            self.voucherCode.text = data?.voucherCode
        }
        
        //actionButton
        self.actionButtonText.text = data?.actionButton?.text
        if(data?.actionButton?.disable == true) {
            self.actionButtonText.textColor = #colorLiteral(red: 0.7184622884, green: 0.7336550951, blue: 0.7498299479, alpha: 1)
            self.actionButtonView.backgroundColor = #colorLiteral(red: 0.9491716027, green: 0.9530587792, blue: 0.9569777846, alpha: 1)
        }
        
        //disable
        if(data?.isDisabled == true) {
            hideShadow()
            self.actionButtonView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
            self.tag1View.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            self.tag2View.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            self.actionButtonText.textColor = #colorLiteral(red: 0.7184622884, green: 0.7336550951, blue: 0.7498299479, alpha: 1)
            self.mainText.textColor = #colorLiteral(red: 0.7184622884, green: 0.7336550951, blue: 0.7498299479, alpha: 1)
            self.sub1Content.textColor = #colorLiteral(red: 0.7184622884, green: 0.7336550951, blue: 0.7498299479, alpha: 1)
            self.actionButtonText.textColor = #colorLiteral(red: 0.7184622884, green: 0.7336550951, blue: 0.7498299479, alpha: 1)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.05) {
                self.voucherShape.drawVouncher(rightWidth: 120, cornerRadius: 10, voucherCutRadius: 10, backgroundColor: #colorLiteral(red: 0.9491716027, green: 0.9530587792, blue: 0.9569777846, alpha: 1), borderColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0), dashColor: #colorLiteral(red: 0.8124228716, green: 0.8237156272, blue: 0.8317530155, alpha: 1), cutAdditionalHeight: 1.5)
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.05) {
                self.showShadow()
                self.voucherShape.drawVouncher(rightWidth: 120, cornerRadius: 10, voucherCutRadius: 10, backgroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), borderColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), dashColor: #colorLiteral(red: 0.8124228716, green: 0.8237156272, blue: 0.8317530155, alpha: 1), cutAdditionalHeight: 1.5)
            }
        }
    }
}
