import AVFoundation
import Foundation
import UIKit

extension AVCaptureConnection {
    func set(deviceOrientation: UIDeviceOrientation) {
        if isVideoOrientationSupported,
            deviceOrientation.isLandscape,
            let videoOrientation = AVCaptureVideoOrientation(rawValue: deviceOrientation.rawValue),
            self.videoOrientation != videoOrientation {
            self.videoOrientation = videoOrientation
        }
    }
}
