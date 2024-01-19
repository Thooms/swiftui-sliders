import SwiftUI

public struct ValueSliderOptions: OptionSet {
    public let rawValue: Int

    // Enable tracking from the background
    public static let interactiveTrack = ValueSliderOptions(rawValue: 1 << 0)
    // Disable tracking from the thumb
    public static let disableThumbTrack = ValueSliderOptions(rawValue: 1 << 1)

    public static let defaultOptions: ValueSliderOptions = []

    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}
