import XCTest
@testable import Cartography
#if canImport(UIKit)
import UIKit
private typealias TestView = UIView
#else
import AppKit
private typealias TestView = NSView
#endif

@MainActor
final class ConstraintTests: XCTestCase {
    func testConstraintsActivateReplaceAndClear() {
        let container = TestView()
        let child = TestView()
        container.addSubview(child)
        let group = constrain(child, container) { view, parent in
            view.width == 80
            view.height == 40
            view.center == parent.center
        }
        XCTAssertFalse(child.translatesAutoresizingMaskIntoConstraints)
        XCTAssertEqual(child.constraints.filter(\.isActive).count, 2)
        XCTAssertEqual(container.constraints.filter(\.isActive).count, 2)
        constrain(child, replace: group) { view in view.width == 120 }
        XCTAssertEqual(child.constraints.filter(\.isActive).count, 1)
        XCTAssertEqual(child.constraints.first?.constant, 120)
        XCTAssertEqual(container.constraints.filter(\.isActive).count, 0)
        constrain(clear: group)
        XCTAssertEqual(child.constraints.filter(\.isActive).count, 0)
    }
}
