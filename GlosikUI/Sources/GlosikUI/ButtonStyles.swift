import SwiftUI

/// A prominent button style that provides a filled background with rounded corners.
public struct ProminentButtonStyle: ButtonStyle {
  public init() {}

  public func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .font(.headline)
      .frame(maxWidth: .infinity)
      .padding()
      .background(configuration.isPressed ? Color.accentColor.opacity(0.8) : Color.accentColor)
      .foregroundStyle(.white)
      .clipShape(RoundedRectangle(cornerRadius: 12))
  }
}

extension ButtonStyle where Self == ProminentButtonStyle {
  /// A prominent button style with a filled background.
  public static var prominent: ProminentButtonStyle {
    ProminentButtonStyle()
  }
}
