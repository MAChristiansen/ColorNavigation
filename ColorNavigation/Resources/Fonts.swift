import Foundation
import SwiftUI

extension Font {
    static func bold(size: CGFloat) -> Font {
        .custom("Oswald-Bold", size: size)
    }
    
    static func regular(size: CGFloat) -> Font {
        .custom("Oswald-Regular", size: size)
    }
    
    static func medium(size: CGFloat) -> Font {
        .custom("Oswald-Medium", size: size)
    }
}
