//
//  ToastView.swift
//  CustomAudioRecorder
//
//  Created by devdchaudhary on 13/06/23.
//

import SwiftUI
import Drops

struct ToastManager {
    
    static let generator = UINotificationFeedbackGenerator()
    
    static func show(
        _ title: String,
        _ subTitle: String = "",
        titleNumberOfLines: Int = 0,
        icon: UIImage? = nil,
        position: Drop.Position,
        duration: Drop.Duration,
        accessibility: Drop.Accessibility) {
            
            if let icon {
                
                Drops.show(Drop(
                    title: title,
                    titleNumberOfLines: titleNumberOfLines,
                    subtitle: subTitle,
                    icon: icon,
                    position: position,
                    duration: duration,
                    accessibility: accessibility
                ))
                
            } else {
                
                Drops.show(Drop(
                    title: title,
                    titleNumberOfLines: titleNumberOfLines,
                    subtitle: subTitle,
                    position: position,
                    duration: duration,
                    accessibility: accessibility
                ))
                
            }
        }
    
    static func showWarning(title: String = "An error occured!", subtitle: String = "", titleNoofLines: Int = 0) {
        
        generator.notificationOccurred(.warning)
        show(title, subtitle, icon:  UIImage(systemName: "exclamationmark.triangle.fill"), position: .top, duration: 2.0, accessibility: "Alert: An error occured!")
    }
    
    static func showError(title: String = "An error occured!", subtitle: String = "", titleNoofLines: Int = 0) {
        
        generator.notificationOccurred(.error)
        show(title, subtitle, icon:  UIImage(systemName: "xmark.circle"), position: .top, duration: 2.0, accessibility: "Alert: An error occured!")
    }
    
    static func showSuccess(title: String = "Success!", subtitle: String = "", titleNoofLines: Int = 0) {
        
        generator.notificationOccurred(.success)
        show(title, subtitle, icon:  UIImage(systemName: "checkmark.circle.fill"), position: .top, duration: 2.0, accessibility: "Alert: Success!")
    }
    
}

