import Foundation
import Crypto

public struct CrackStation: Decrypter {

    public init(){}
        
    static func loadDictionaryFromDisk() throws -> [String : String] {
        
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }

        let data = try Data(contentsOf: path)

        let jsonResult = try JSONSerialization.jsonObject(with: data)

        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } 
        else {
            return [:]
        }
    }

    public func decrypt(shaHash: String) throws -> String?{
        let myTable : [String : String] = try CrackStation.loadDictionaryFromDisk()  
        
        let plaintextPassword: String? = myTable[shaHash]   

        if let plaintextPassword: String = plaintextPassword {

            print(plaintextPassword)
        }   
        
        return plaintextPassword 
    }
   
}


