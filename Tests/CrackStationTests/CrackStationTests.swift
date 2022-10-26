import XCTest
import CrackStation
final class CrackStationTests: XCTestCase {
    func testCrack() throws {
        // Given
        let myCrackStation = CrackStation()

        // When
        let plainTextPassword = try myCrackStation.decrypt(shaHash: "970f519c2cadbcefb1e81694f904bc6229dd2a8300e98c6d0d4fc4bfca584140")
        
        // Then
        XCTAssertEqual("ba", plainTextPassword)
    }
}
