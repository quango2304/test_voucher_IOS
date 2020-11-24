//
//  models.swift
//  test_voucher
//
//  Created by Ngo Van Quan on 11/19/20.
//  Copyright © 2020 Ngo Van Quan. All rights reserved.
//

import Foundation
import UIKit

public enum SDDSVoucherCard2Type {
    case full
    case shortcut
}

public class SDDSVoucherCard2Data {
    public var type: SDDSVoucherCard2Type?
    //left part
    public var issuer: SDDSVoucherCard2IssuerData?
    public var mainTitle: SDDSVoucherCard2MainTitleData?
    public var subItem1: SDDSVoucherCard2SubItemData?
    public var subItem2: SDDSVoucherCard2SubItemData?
    public var subItem3: SDDSVoucherCard2SubItemData?
    public var isShopPlus: Bool?
    public var tag1: String?
    public var tag2: String?
    //right part
    public var actionButton: SDDSVoucherCard2ActionButtonData?
    public var voucherCode: String?
    public var badge: SDDSVoucherCard2BadgeData?
    public var isDisabled: Bool?
    public var isSelected: Bool?

    init(type:SDDSVoucherCard2Type? = nil,
         issuer:SDDSVoucherCard2IssuerData? = nil,
         mainTitle:SDDSVoucherCard2MainTitleData? = nil,
         subItem1:SDDSVoucherCard2SubItemData? = nil,
         subItem2:SDDSVoucherCard2SubItemData? = nil,
         subItem3:SDDSVoucherCard2SubItemData? = nil,
         isShopPlus:Bool? = nil,
         tag1:String? = nil,
         tag2:String? = nil,
         actionButton:SDDSVoucherCard2ActionButtonData? = nil,
         voucherCode:String? = nil,
         badge:SDDSVoucherCard2BadgeData? = nil, isDisabled: Bool? = nil, isSelected: Bool? = false) {
     self.type = type
     self.issuer = issuer
     self.mainTitle = mainTitle
     self.subItem1 = subItem1
     self.subItem2 = subItem2
     self.subItem3 = subItem3
     self.isShopPlus = isShopPlus
     self.tag1 = tag1
     self.tag2 = tag2
     self.actionButton = actionButton
     self.voucherCode = voucherCode
     self.badge = badge
     self.isDisabled = isDisabled
     self.isSelected = isSelected
    }
}


public class SDDSVoucherCard2MainTitleData {
    public var title: String?;
    public var color: UIColor?;
    init(title:String? = nil, color:UIColor? = nil) {
        self.title = title
        self.color = color
    }
}

public class SDDSVoucherCard2SubItemData {
    public var title: String?;
    public var content: String?;
    public var contentColor: UIColor?;
    init(title:String? = nil, content:String? = nil, contentColor:UIColor? = nil) {
        self.title = title
        self.content = content
        self.contentColor = contentColor
    }
}

public class SDDSVoucherCard2ActionButtonData {
    public var text: String?;
    public var disable: Bool?;
    public var textColor: UIColor?;
    public var backgroundColor: UIColor?;
    init(text:String? = nil, disable:Bool? = nil, textColor:UIColor? = nil, backgroundColor:UIColor? = nil) {
        self.text = text
        self.disable = disable
        self.textColor = textColor
        self.backgroundColor = backgroundColor
    }
}

public class SDDSVoucherCard2BadgeData {
    public var text: String?;
    public var background: UIColor?;
    init(text:String? = nil, background:UIColor? = nil) {
        self.text = text
        self.background = background
    }
}

public class SDDSVoucherCard2IssuerData {
    public var issuerAvatar: String?
    public var issuerName: String?
    init(issuerAvatar:String? = nil, issuerName:String? = nil) {
        self.issuerAvatar = issuerAvatar
        self.issuerName = issuerName
    }
}
