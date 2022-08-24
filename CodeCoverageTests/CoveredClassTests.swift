@testable import CodeCoverage
import XCTest

final class CoveredClassTests: XCTestCase {
  func testAreaWithWidth7ShouldReturn49() {
    let sut = CoveredClass()
    
    sut.width = 7
    
    XCTAssertEqual(49, sut.area)
  }
  
  func testMax1And2ShouldReturn2() {
    let actualResult = CoveredClass.max(1, 2)
    
    XCTAssertEqual(2, actualResult)
  }
  
  func testMax3And2ShouldReturn3() {
    let actualResult = CoveredClass.max(3, 2)
    
    XCTAssertEqual(3, actualResult)
  }
  
  func testCommaSeparatedFrom2To4ShouldReturn234() {
    let actualResult = CoveredClass.commaSeparated(from: 2, to: 4)
    
    XCTAssertEqual("2,3,4", actualResult)
  }
  
  func testCommaSeparatedFrom2To2ShouldReturnSomething() {
    let actualResult = CoveredClass.commaSeparated(from: 2, to: 2)
    
    XCTAssertEqual("2", actualResult)
  }
}
