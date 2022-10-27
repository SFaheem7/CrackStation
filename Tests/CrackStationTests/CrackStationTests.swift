import XCTest
import CrackStation
final class CrackStationTests: XCTestCase {
    func testCrack() throws {
        // Given
        let myCrackStation = CrackStation()

        // When
        let plainTextPassword = myCrackStation.decrypt(shaHash: "58668e7669fd564d99db5d581fcdb6a5618440b5")
        
        // Then
        XCTAssertEqual("J", plainTextPassword)
    }
}
