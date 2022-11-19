import XCTest
import CrackStation
final class CrackStationTests: XCTestCase {
    func testCrack() throws {
        // Given
        let myCrackStation = CrackStation()

        // When
        let plainTextPassword = myCrackStation.decrypt(shaHash: "83979a8283cee03309ffb57dfd9919af64a359011d538cf0aedefc888459eb02")
        
        // Then
        XCTAssertEqual("1LO", plainTextPassword)
    }
    func testCrack1() throws {
        // Given
        let myCrackStation = CrackStation()

        // When
        let plainTextPassword = myCrackStation.decrypt(shaHash: "b216c02fe28187831855b638433fbf2ea5ee5605bb412c11c251e0dc5d514aec")
        
        // Then
        XCTAssertEqual("K2a", plainTextPassword)
    }
}
