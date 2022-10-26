import XCTest
import CrackStation
final class CrackStationTests: XCTestCase {
    func testCrack() throws {
        // Given
        let myCrackStation = CrackStation()

        // When
        let plainTextPassword = try myCrackStation.decrypt(shaHash: "e9d71f5ee7c92d6dc9e92ffdad17b8bd49418f98")
        
        // Then
        XCTAssertEqual("b", plainTextPassword)
    }
}
