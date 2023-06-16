//
//  ToastView.swift
//  CustomAudioRecorder
//
//  Created by devdchaudhary on 13/06/23.
//

import Toast
import UIKit

struct ToastManager {
    
    static func show(
        _ title: String,
        subTitle: String = "",
        image: UIImage? = nil,
        haptic: UINotificationFeedbackGenerator.FeedbackType = .success)
    {
        
        if let image = image {
            let toast = Toast.default(
                image: image,
                title: title,
                subtitle: subTitle
            )
            toast.show(haptic: haptic)
        }else {
            let toast = Toast.text(title, subtitle: subTitle)
            toast.show(haptic: haptic)
        }
        
        
    }
    
    static func showSuccess(_ title: String, subtitle: String = "") {
        show(title, subTitle: subtitle, image: UIImage(systemName: "checkmark.seal.fill"), haptic: .success)
    }
    
    static func showWarning(_ title: String, subtitle: String = "") {
        show(title, subTitle: subtitle, image: UIImage(systemName: "exclamationmark"), haptic: .warning)
    }
    
    static func showError(_ title: String, subtitle: String = "") {
        show(title, subTitle: subtitle, image: UIImage(systemName: "xmark.seal"), haptic: .error)
    }
    
}
