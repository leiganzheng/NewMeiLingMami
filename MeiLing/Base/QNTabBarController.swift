//
//  QNTabBarController.swift
//  QooccHealth
//
//  Created by leiganzheng on 15/4/14.
//  Copyright (c) 2015年 Juxi. All rights reserved.
//
let QNNotificationJMPAppointmentOrder = "QNNotificationJMPAppointmentOrder"
var isJMPAppointmentOrder = false
var JMPAppointmentOrderIndex = "0" // 0 新  1 中  2 完成

import UIKit
// 跳转到订单界面
// MARK: Tab 分组
private enum QNTabBarItem: Int {
    case MedicaData = 0
    case Task = 1
    case UserCenter = 2
    case Me = 3
    
    // 对应的图片名
    var imageName: String {
        switch self {
        case .MedicaData: return "icon-管店"
        case .Task: return "icon-微课堂"
        case .UserCenter: return "icon-爱尚城"
        case .Me: return "icon-我"
        }
    }
}

/// MARK: - 底部工具控制器
class QNTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 修改底部工具条的字体和颜色
        self.tabBar.translucent = false
        self.tabBar.barTintColor =  UIColor(red: 175/255, green: 154/255, blue: 115/255, alpha: 1.0);
        self.tabBar.tintColor = UIColor.whiteColor()
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(objects: [UIColor(red: 140/255, green: 99/255, blue: 23/255, alpha: 1.0), UIFont.systemFontOfSize(12)], forKeys: [NSForegroundColorAttributeName,NSFontAttributeName]) as? [String : AnyObject], forState: .Normal)
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(objects: [UIColor.whiteColor(), UIFont.systemFontOfSize(12)], forKeys: [NSForegroundColorAttributeName,NSFontAttributeName]) as? [String : AnyObject], forState: .Selected)

        // 图标配置
        if let _ = self.tabBar.items {
            self.itemConfig(QNTabBarItem.MedicaData)
            self.itemConfig(QNTabBarItem.Task)
            self.itemConfig(QNTabBarItem.UserCenter)
            self.itemConfig(QNTabBarItem.Me)
        }
    }
    
    /**
    配置Item
    
    :param: index     配置项
    :param: haveDot   是否需要小红点
    
    :returns: 被配置的Item
    */
    private func itemConfig(qnItem: QNTabBarItem, haveDot: Bool = false) -> UITabBarItem? {
        if let item = self.tabBar.items?[qnItem.rawValue] {
            let imageName = qnItem.imageName
            if let image = UIImage(named: imageName + "1"),
                let selectedImage = UIImage(named: imageName + "2") {
                if !haveDot {
                    item.image = image.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
                    item.selectedImage = selectedImage.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
                }
                else {
                    item.image = self.imageAddDotView(image).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
                    item.selectedImage = self.imageAddDotView(selectedImage).imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
                }
            }
            return item
        }
        return nil
    }
    
    private func imageAddDotView(image: UIImage) -> UIImage {
        let imageView = UIImageView(image: image)
        
        let dotView = UIView(frame: CGRect(x: imageView.bounds.width - 8, y: imageView.bounds.height - 8, width: 8, height: 8))
        dotView.layer.masksToBounds = true
        dotView.layer.cornerRadius = dotView.bounds.width/2.0
        dotView.backgroundColor = UIColor(red: 251/255.0, green: 55/255.0, blue: 55/255.0, alpha: 1.0)
        imageView.addSubview(dotView)
        
        UIGraphicsBeginImageContextWithOptions(imageView.frame.size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        imageView.layer.renderInContext(context!)
        let imageResult = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return imageResult
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 }
