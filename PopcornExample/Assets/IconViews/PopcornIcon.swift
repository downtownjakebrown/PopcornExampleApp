//
// See LICENSE file for this package’s licensing information.
//

//
// This icon was made with the help of SwiftyIllustrator.
//
// SwiftyIllustrator is a tool for quickly converting Adobe
// Illustrator shapes into SwiftUI code. Learn more by visiting
// the below GitHub repository.
//
// https://github.com/downtownjakebrown/SwiftyIllustrator.git
//

import SwiftUI

// MARK: - PopcornIconView
struct PopcornIconView: View {
    var body: some View {
        ZStack {
            PopcornIconElement5().fill(LinearGradient(gradient: .yellow, startPoint: .top, endPoint: .bottom))
            PopcornIconElement4().fill(Color.yellow)
            PopcornIconElement3().fill(LinearGradient(gradient: .red, startPoint: .bottom, endPoint: .top))
            PopcornIconElement2().fill(Color.white)
            PopcornIconElement1().fill(Color.white)
        }
    }
}

// MARK: - PopcornIconProperties
fileprivate struct PopcornIconProperties {
    static let size = CGSize(width: 334.53, height: 430.83)
}

// MARK: - PopcornIconElement1
fileprivate struct PopcornIconElement1: Shape {

    private let baseSize: CGSize = PopcornIconProperties.size

    func path(in rect: CGRect) -> Path {

        let basePath = Path { path in

            let anchorPoints = [
                CGPoint(x: -54.33, y: 187.07),
                CGPoint(x: -54.33, y: 187.07),
                CGPoint(x: -86.77, y: 158.19),
                CGPoint(x: -99.29, y: -57.66),
                CGPoint(x: -70.41, y: -90.1),
                CGPoint(x: -70.41, y: -90.1),
                CGPoint(x: -37.97, y: -61.22),
                CGPoint(x: -25.45, y: 154.63),
                CGPoint(x: -54.33, y: 187.07)
            ]

            let control1 = [
                CGPoint(x: -54.33, y: 187.07),
                CGPoint(x: -71.19, y: 188.05),
                CGPoint(x: -86.77, y: 158.19),
                CGPoint(x: -100.27, y: -74.52),
                CGPoint(x: -70.41, y: -90.1),
                CGPoint(x: -53.55, y: -91.08),
                CGPoint(x: -37.97, y: -61.22),
                CGPoint(x: -24.47, y: 171.5)
            ]

            let control2 = [
                CGPoint(x: -54.33, y: 187.07),
                CGPoint(x: -85.79, y: 175.05),
                CGPoint(x: -99.29, y: -57.66),
                CGPoint(x: -87.27, y: -89.12),
                CGPoint(x: -70.41, y: -90.1),
                CGPoint(x: -38.95, y: -78.08),
                CGPoint(x: -25.45, y: 154.63),
                CGPoint(x: -37.47, y: 186.09)
            ]

            path.move(to: anchorPoints[0])
            path.addCurve(to: anchorPoints[1], control1: control1[0], control2: control2[0])
            path.addCurve(to: anchorPoints[2], control1: control1[1], control2: control2[1])
            path.addCurve(to: anchorPoints[3], control1: control1[2], control2: control2[2])
            path.addCurve(to: anchorPoints[4], control1: control1[3], control2: control2[3])
            path.addCurve(to: anchorPoints[5], control1: control1[4], control2: control2[4])
            path.addCurve(to: anchorPoints[6], control1: control1[5], control2: control2[5])
            path.addCurve(to: anchorPoints[7], control1: control1[6], control2: control2[6])
            path.addCurve(to: anchorPoints[8], control1: control1[7], control2: control2[7])
            path.closeSubpath()

        }

        let rectWidth = rect.size.width
        let rectHeight = rect.size.height

        let scaleFactor: CGFloat
        let widthRatio = rectWidth/baseSize.width
        let heightRatio = rectHeight/baseSize.height
        if widthRatio < heightRatio {
            scaleFactor = widthRatio
        } else {
            scaleFactor = heightRatio
        }

        let scaleTransform = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
        let moveTransform = CGAffineTransform(translationX: 0.5*rectWidth, y: 0.5*rectHeight)
        let combinedTransform = scaleTransform.concatenating(moveTransform)

        let modifiedPath = basePath.applying(combinedTransform)
        return modifiedPath

    }
}

// MARK: - PopcornIconElement2
fileprivate struct PopcornIconElement2: Shape {

    private let baseSize: CGSize = PopcornIconProperties.size

    func path(in rect: CGRect) -> Path {

        let basePath = Path { path in

            let anchorPoints = [
                CGPoint(x: 54.36, y: 187.07),
                CGPoint(x: 54.36, y: 187.07),
                CGPoint(x: 86.8, y: 158.19),
                CGPoint(x: 99.32, y: -57.66),
                CGPoint(x: 70.44, y: -90.1),
                CGPoint(x: 70.44, y: -90.1),
                CGPoint(x: 38.01, y: -61.22),
                CGPoint(x: 25.49, y: 154.63),
                CGPoint(x: 54.36, y: 187.07)
            ]

            let control1 = [
                CGPoint(x: 54.36, y: 187.07),
                CGPoint(x: 71.23, y: 188.05),
                CGPoint(x: 86.8, y: 158.19),
                CGPoint(x: 100.3, y: -74.52),
                CGPoint(x: 70.44, y: -90.1),
                CGPoint(x: 53.58, y: -91.08),
                CGPoint(x: 38.01, y: -61.22),
                CGPoint(x: 24.51, y: 171.5)
            ]

            let control2 = [
                CGPoint(x: 54.36, y: 187.07),
                CGPoint(x: 85.82, y: 175.05),
                CGPoint(x: 99.32, y: -57.66),
                CGPoint(x: 87.31, y: -89.12),
                CGPoint(x: 70.44, y: -90.1),
                CGPoint(x: 38.99, y: -78.08),
                CGPoint(x: 25.49, y: 154.63),
                CGPoint(x: 37.5, y: 186.09)
            ]

            path.move(to: anchorPoints[0])
            path.addCurve(to: anchorPoints[1], control1: control1[0], control2: control2[0])
            path.addCurve(to: anchorPoints[2], control1: control1[1], control2: control2[1])
            path.addCurve(to: anchorPoints[3], control1: control1[2], control2: control2[2])
            path.addCurve(to: anchorPoints[4], control1: control1[3], control2: control2[3])
            path.addCurve(to: anchorPoints[5], control1: control1[4], control2: control2[4])
            path.addCurve(to: anchorPoints[6], control1: control1[5], control2: control2[5])
            path.addCurve(to: anchorPoints[7], control1: control1[6], control2: control2[6])
            path.addCurve(to: anchorPoints[8], control1: control1[7], control2: control2[7])
            path.closeSubpath()

        }

        let rectWidth = rect.size.width
        let rectHeight = rect.size.height

        let scaleFactor: CGFloat
        let widthRatio = rectWidth/baseSize.width
        let heightRatio = rectHeight/baseSize.height
        if widthRatio < heightRatio {
            scaleFactor = widthRatio
        } else {
            scaleFactor = heightRatio
        }

        let scaleTransform = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
        let moveTransform = CGAffineTransform(translationX: 0.5*rectWidth, y: 0.5*rectHeight)
        let combinedTransform = scaleTransform.concatenating(moveTransform)

        let modifiedPath = basePath.applying(combinedTransform)
        return modifiedPath

    }
}

// MARK: - PopcornIconElement3
fileprivate struct PopcornIconElement3: Shape {

    private let baseSize: CGSize = PopcornIconProperties.size

    func path(in rect: CGRect) -> Path {

        let basePath = Path { path in

            let anchorPoints = [
                CGPoint(x: 0.02, y: 215.41),
                CGPoint(x: -107.83, y: 215.41),
                CGPoint(x: -141.17, y: 182.08),
                CGPoint(x: -167.1, y: -57.67),
                CGPoint(x: -107.85, y: -71.73),
                CGPoint(x: -91.38, y: -59.62),
                CGPoint(x: -44.82, y: -59.62),
                CGPoint(x: -28.36, y: -71.33),
                CGPoint(x: 0.02, y: -90.33),
                CGPoint(x: 28.3, y: -71.55),
                CGPoint(x: 45.1, y: -59.62),
                CGPoint(x: 91.23, y: -59.62),
                CGPoint(x: 107.73, y: -71.78),
                CGPoint(x: 167.14, y: -57.66),
                CGPoint(x: 141.2, y: 182.08),
                CGPoint(x: 107.87, y: 215.41),
                CGPoint(x: 0.02, y: 215.41)
            ]

            let control1 = [
                CGPoint(x: 0.02, y: 215.41),
                CGPoint(x: -126.17, y: 215.41),
                CGPoint(x: -140.3, y: 182.25),
                CGPoint(x: -170.48, y: -94.72),
                CGPoint(x: -105.51, y: -65.16),
                CGPoint(x: -91.38, y: -59.62),
                CGPoint(x: -37.4, y: -59.62),
                CGPoint(x: -23.74, y: -82.45),
                CGPoint(x: 12.68, y: -90.33),
                CGPoint(x: 31.26, y: -64.59),
                CGPoint(x: 45.1, y: -59.62),
                CGPoint(x: 98.8, y: -59.62),
                CGPoint(x: 119.04, y: -102.6),
                CGPoint(x: 167.89, y: -63.58),
                CGPoint(x: 141.2, y: 200.42),
                CGPoint(x: 107.87, y: 215.41)
            ]

            let control2 = [
                CGPoint(x: -107.83, y: 215.41),
                CGPoint(x: -141.17, y: 200.41),
                CGPoint(x: -168.1, y: -62.68),
                CGPoint(x: -119.24, y: -103.66),
                CGPoint(x: -98.34, y: -59.62),
                CGPoint(x: -44.82, y: -59.62),
                CGPoint(x: -31.21, y: -64.47),
                CGPoint(x: -12.73, y: -90.33),
                CGPoint(x: 23.62, y: -82.56),
                CGPoint(x: 37.53, y: -59.62),
                CGPoint(x: 91.23, y: -59.62),
                CGPoint(x: 105.13, y: -64.67),
                CGPoint(x: 170.1, y: -95.91),
                CGPoint(x: 140.89, y: 183.43),
                CGPoint(x: 126.2, y: 215.41),
                CGPoint(x: 0.02, y: 215.41)
            ]

            path.move(to: anchorPoints[0])
            path.addCurve(to: anchorPoints[1], control1: control1[0], control2: control2[0])
            path.addCurve(to: anchorPoints[2], control1: control1[1], control2: control2[1])
            path.addCurve(to: anchorPoints[3], control1: control1[2], control2: control2[2])
            path.addCurve(to: anchorPoints[4], control1: control1[3], control2: control2[3])
            path.addCurve(to: anchorPoints[5], control1: control1[4], control2: control2[4])
            path.addCurve(to: anchorPoints[6], control1: control1[5], control2: control2[5])
            path.addCurve(to: anchorPoints[7], control1: control1[6], control2: control2[6])
            path.addCurve(to: anchorPoints[8], control1: control1[7], control2: control2[7])
            path.addCurve(to: anchorPoints[9], control1: control1[8], control2: control2[8])
            path.addCurve(to: anchorPoints[10], control1: control1[9], control2: control2[9])
            path.addCurve(to: anchorPoints[11], control1: control1[10], control2: control2[10])
            path.addCurve(to: anchorPoints[12], control1: control1[11], control2: control2[11])
            path.addCurve(to: anchorPoints[13], control1: control1[12], control2: control2[12])
            path.addCurve(to: anchorPoints[14], control1: control1[13], control2: control2[13])
            path.addCurve(to: anchorPoints[15], control1: control1[14], control2: control2[14])
            path.addCurve(to: anchorPoints[16], control1: control1[15], control2: control2[15])
            path.closeSubpath()

        }

        let rectWidth = rect.size.width
        let rectHeight = rect.size.height

        let scaleFactor: CGFloat
        let widthRatio = rectWidth/baseSize.width
        let heightRatio = rectHeight/baseSize.height
        if widthRatio < heightRatio {
            scaleFactor = widthRatio
        } else {
            scaleFactor = heightRatio
        }

        let scaleTransform = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
        let moveTransform = CGAffineTransform(translationX: 0.5*rectWidth, y: 0.5*rectHeight)
        let combinedTransform = scaleTransform.concatenating(moveTransform)

        let modifiedPath = basePath.applying(combinedTransform)
        return modifiedPath

    }
}

// MARK: - PopcornIconElement4
fileprivate struct PopcornIconElement4: Shape {

    private let baseSize: CGSize = PopcornIconProperties.size

    func path(in rect: CGRect) -> Path {

        let basePath = Path { path in

            let anchorPoints = [
                CGPoint(x: 79.74, y: -94.63),
                CGPoint(x: 84.34, y: -108.86),
                CGPoint(x: 36.55, y: -142.3),
                CGPoint(x: 4.75, y: -133.77),
                CGPoint(x: -35.98, y: -149.83),
                CGPoint(x: -84.34, y: -115.11),
                CGPoint(x: -77.12, y: -96.93),
                CGPoint(x: -98.96, y: -56.17),
                CGPoint(x: 0, y: 8.97),
                CGPoint(x: 98.96, y: -56.17),
                CGPoint(x: 79.74, y: -94.63)
            ]

            let control1 = [
                CGPoint(x: 82.66, y: -98.95),
                CGPoint(x: 84.34, y: -127.33),
                CGPoint(x: 24.32, y: -142.3),
                CGPoint(x: -3.85, y: -143.42),
                CGPoint(x: -62.69, y: -149.83),
                CGPoint(x: -84.34, y: -108.44),
                CGPoint(x: -90.76, y: -85.77),
                CGPoint(x: -98.96, y: -20.2),
                CGPoint(x: 54.65, y: 8.97),
                CGPoint(x: 98.96, y: -70.58)
            ]

            let control2 = [
                CGPoint(x: 84.34, y: -103.77),
                CGPoint(x: 62.94, y: -142.3),
                CGPoint(x: 13.2, y: -139.06),
                CGPoint(x: -18.86, y: -149.83),
                CGPoint(x: -84.34, y: -134.29),
                CGPoint(x: -81.67, y: -102.22),
                CGPoint(x: -98.96, y: -71.61),
                CGPoint(x: -54.65, y: 8.97),
                CGPoint(x: 98.96, y: -20.2),
                CGPoint(x: 91.77, y: -83.84)
            ]

            path.move(to: anchorPoints[0])
            path.addCurve(to: anchorPoints[1], control1: control1[0], control2: control2[0])
            path.addCurve(to: anchorPoints[2], control1: control1[1], control2: control2[1])
            path.addCurve(to: anchorPoints[3], control1: control1[2], control2: control2[2])
            path.addCurve(to: anchorPoints[4], control1: control1[3], control2: control2[3])
            path.addCurve(to: anchorPoints[5], control1: control1[4], control2: control2[4])
            path.addCurve(to: anchorPoints[6], control1: control1[5], control2: control2[5])
            path.addCurve(to: anchorPoints[7], control1: control1[6], control2: control2[6])
            path.addCurve(to: anchorPoints[8], control1: control1[7], control2: control2[7])
            path.addCurve(to: anchorPoints[9], control1: control1[8], control2: control2[8])
            path.addCurve(to: anchorPoints[10], control1: control1[9], control2: control2[9])
            path.closeSubpath()

        }

        let rectWidth = rect.size.width
        let rectHeight = rect.size.height

        let scaleFactor: CGFloat
        let widthRatio = rectWidth/baseSize.width
        let heightRatio = rectHeight/baseSize.height
        if widthRatio < heightRatio {
            scaleFactor = widthRatio
        } else {
            scaleFactor = heightRatio
        }

        let scaleTransform = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
        let moveTransform = CGAffineTransform(translationX: 0.5*rectWidth, y: 0.5*rectHeight)
        let combinedTransform = scaleTransform.concatenating(moveTransform)

        let modifiedPath = basePath.applying(combinedTransform)
        return modifiedPath

    }
}

// MARK: - PopcornIconElement5
fileprivate struct PopcornIconElement5: Shape {

    private let baseSize: CGSize = PopcornIconProperties.size

    func path(in rect: CGRect) -> Path {

        let basePath = Path { path in

            let anchorPoints = [
                CGPoint(x: 126.63, y: -125.68),
                CGPoint(x: 134.22, y: -145.63),
                CGPoint(x: 83, y: -183.84),
                CGPoint(x: 56.65, y: -178.35),
                CGPoint(x: 2.95, y: -215.41),
                CGPoint(x: -48.86, y: -184.02),
                CGPoint(x: -83.45, y: -193.81),
                CGPoint(x: -139.94, y: -147.29),
                CGPoint(x: -130.72, y: -121.85),
                CGPoint(x: -156.56, y: -64.43),
                CGPoint(x: 0, y: 40.03),
                CGPoint(x: 156.56, y: -64.43),
                CGPoint(x: 126.63, y: -125.68)
            ]

            let control1 = [
                CGPoint(x: 131.41, y: -131.49),
                CGPoint(x: 134.22, y: -166.73),
                CGPoint(x: 73.35, y: -183.84),
                CGPoint(x: 51.49, y: -199.51),
                CGPoint(x: -21.08, y: -215.41),
                CGPoint(x: -58.42, y: -190.13),
                CGPoint(x: -114.65, y: -193.81),
                CGPoint(x: -139.94, y: -137.89),
                CGPoint(x: -147.01, y: -105.37),
                CGPoint(x: -156.56, y: -6.74),
                CGPoint(x: 86.47, y: 40.03),
                CGPoint(x: 156.56, y: -87.34)
            ]

            let control2 = [
                CGPoint(x: 134.22, y: -138.31),
                CGPoint(x: 111.29, y: -183.84),
                CGPoint(x: 64.35, y: -181.82),
                CGPoint(x: 29.41, y: -215.41),
                CGPoint(x: -41.45, y: -202.28),
                CGPoint(x: -70.4, y: -193.81),
                CGPoint(x: -139.94, y: -172.98),
                CGPoint(x: -136.54, y: -129.16),
                CGPoint(x: -156.56, y: -85.65),
                CGPoint(x: -86.47, y: 40.03),
                CGPoint(x: 156.56, y: -6.74),
                CGPoint(x: 145.38, y: -108.46)
            ]

            path.move(to: anchorPoints[0])
            path.addCurve(to: anchorPoints[1], control1: control1[0], control2: control2[0])
            path.addCurve(to: anchorPoints[2], control1: control1[1], control2: control2[1])
            path.addCurve(to: anchorPoints[3], control1: control1[2], control2: control2[2])
            path.addCurve(to: anchorPoints[4], control1: control1[3], control2: control2[3])
            path.addCurve(to: anchorPoints[5], control1: control1[4], control2: control2[4])
            path.addCurve(to: anchorPoints[6], control1: control1[5], control2: control2[5])
            path.addCurve(to: anchorPoints[7], control1: control1[6], control2: control2[6])
            path.addCurve(to: anchorPoints[8], control1: control1[7], control2: control2[7])
            path.addCurve(to: anchorPoints[9], control1: control1[8], control2: control2[8])
            path.addCurve(to: anchorPoints[10], control1: control1[9], control2: control2[9])
            path.addCurve(to: anchorPoints[11], control1: control1[10], control2: control2[10])
            path.addCurve(to: anchorPoints[12], control1: control1[11], control2: control2[11])
            path.closeSubpath()

        }

        let rectWidth = rect.size.width
        let rectHeight = rect.size.height

        let scaleFactor: CGFloat
        let widthRatio = rectWidth/baseSize.width
        let heightRatio = rectHeight/baseSize.height
        if widthRatio < heightRatio {
            scaleFactor = widthRatio
        } else {
            scaleFactor = heightRatio
        }

        let scaleTransform = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
        let moveTransform = CGAffineTransform(translationX: 0.5*rectWidth, y: 0.5*rectHeight)
        let combinedTransform = scaleTransform.concatenating(moveTransform)

        let modifiedPath = basePath.applying(combinedTransform)
        return modifiedPath

    }
}

// MARK: - Preview
#if DEBUG
struct PopcornIconView_Previews: PreviewProvider {
    static var previews: some View {
        PopcornIconView()
    }
}
#endif
