//
//  models.swift
//  test_voucher
//
//  Created by Ngo Van Quan on 11/19/20.
//  Copyright © 2020 Ngo Van Quan. All rights reserved.
//

import Foundation
import UIKit

public enum VoucherType {
    case full
    case shortcut
}

public class VoucherData {
    public var type: VoucherType?
    //left part
    public var issuer: VoucherIssuerData?
    public var mainTitle: VoucherMainTitleData?
    public var subItem1: VoucherSubItemData?
    public var subItem2: VoucherSubItemData?
    public var subItem3: VoucherSubItemData?
    public var isShopPlus: Bool?
    public var tag1: String?
    public var tag2: String?
    //right part
    public var actionButton: VoucherActionButtonData?
    public var voucherCode: String?
    public var badge: VoucherBadgeData?
    public var isDisabled: Bool?

    init(type:VoucherType? = nil,
         issuer:VoucherIssuerData? = nil,
         mainTitle:VoucherMainTitleData? = nil,
         subItem1:VoucherSubItemData? = nil,
         subItem2:VoucherSubItemData? = nil,
         subItem3:VoucherSubItemData? = nil,
         isShopPlus:Bool? = nil,
         tag1:String? = nil,
         tag2:String? = nil,
         actionButton:VoucherActionButtonData? = nil,
         voucherCode:String? = nil,
         badge:VoucherBadgeData? = nil, isDisabled: Bool? = nil) {
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
    }
}


public class VoucherMainTitleData {
    public var title: String?;
    public var color: UIColor?;
    init(title:String? = nil, color:UIColor? = nil) {
        self.title = title
        self.color = color
    }
}

public class VoucherSubItemData {
    public var title: String?;
    public var content: String?;
    public var contentColor: UIColor?;
    init(title:String? = nil, content:String? = nil, contentColor:UIColor? = nil) {
        self.title = title
        self.content = content
        self.contentColor = contentColor
    }
}

public class VoucherActionButtonData {
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

public class VoucherBadgeData {
    public var text: String?;
    public var background: UIColor?;
    init(text:String? = nil, color:UIColor? = nil) {
        self.text = text
        self.background = color
    }
}

public class VoucherIssuerData {
    public var issuerAvatar: String?
    public var issuerName: String?
    init(issuerAvatar:String? = nil, issuerName:String? = nil) {
        self.issuerAvatar = issuerAvatar
        self.issuerName = issuerName
    }
}
