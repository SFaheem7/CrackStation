import Foundation
import Crypto

public struct CrackStation: Decrypter {
    
    private static let hashTable: [String : String] = loadDictionaryFromDisk()
    
    /// O(1)
    public init(){}
        
    private static func loadDictionaryFromDisk() -> [String : String]{
        do{
            guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }
        
            let data = try Data(contentsOf: path)

            let jsonResult = try JSONSerialization.jsonObject(with: data)
        
            if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String>{

                return lookupTable
            }
            else{

                return [:]
            }
        }
        catch{

            return [:]
        }

    }

    /// O(1) lookup
    public func decrypt(shaHash: String) -> String?{

        let plaintextPassword = Self.hashTable[shaHash]  
        
        return plaintextPassword 
    }
   
}


