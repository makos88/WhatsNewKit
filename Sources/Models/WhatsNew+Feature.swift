import SwiftUI

// MARK: - WhatsNew+Feature

public extension WhatsNew {
    
    /// A WhatsNew Feature
    struct Feature {
        
        // MARK: Properties
        
        /// The image
        public let image: Image
        
        /// The title Text
        public let title: Text
        
        /// The subtitle Text
        public let subtitle: Text

        public let titleFont: Font
        public let titleForegroundColor: Color

        public let subtitleFont: Font
        public let subtitleForegroundColor: Color
        
        // MARK: Initializer
        
        /// Creates a new instance of `WhatsNew.Feature`
        /// - Parameters:
        ///   - image: The image
        ///   - title: The title Text
        ///   - subtitle: The subtitle Text
        public init(
            image: Image,
            title: Text,
            titleFont: Font = .subheadline.weight(.semibold),
            titleForegroundColor: Color = .primary,
            subtitle: Text,
            subtitleFont: Font = .subheadline,
            subtitleForegroundColor: Color = .secondary
        ) {
            self.image = image
            self.title = title
            self.titleFont = titleFont
            self.titleForegroundColor = titleForegroundColor
            self.subtitle = subtitle
            self.subtitleFont = subtitleFont
            self.subtitleForegroundColor = subtitleForegroundColor
        }
        
    }
    
}

// MARK: - Feature+Equatable

extension WhatsNew.Feature: Equatable {
    
    /// Returns a Boolean value indicating whether two values are equal.
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.title == rhs.title
            && lhs.subtitle == rhs.subtitle
    }
    
}

// MARK: - Feature+Hashable

extension WhatsNew.Feature: Hashable {
    
    /// Hashes the essential components of this value by feeding them into the given hasher.
    /// - Parameter hasher: The hasher to use when combining the components of this instance.
    public func hash(
        into hasher: inout Hasher
    ) {
        hasher.combine(self.title)
        hasher.combine(self.subtitle)
    }
    
}
