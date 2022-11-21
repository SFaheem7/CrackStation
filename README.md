# CrackStation

A swift-based tool to crack "SHA-1" and "SHA-2" **<em>unsalted</em>** encrypted passwords of upto three letters. This implementation uses a dictionary to map upto three letter combinations and their SHA-1 and SHA-2 hashes.

## Overview

Imagine yourself in a simplistic world where there are no conditions placed on password length and strength. You chose to create easy passwords to be able to remember them later on. But if its easy for you to remember then it might also be easy for someone else to figure it out. 

You try to understand how easy it is for people to be able to crack your unimaginable password, with all the bounties you have in store once you have access. 

Your instructor provides you with a model password generator which decrypts passwords encoded using simple hashing algorithm. You are able to crack passwords and login to the command prompt of a user, and are able to change everything. THE POWER IS IN YOUR HANDS!

To replicate your professor you set out to create a similar implementation but it seems overwhelming so you decide to take one step at a time. 

First implementing a version which is able to decrypt one letter password, followed by 2 letters and then finally 3 letters, to be able to fully comprehend the mechanism behind it all.

## Mission Statement

The purpose of this implementation is to build awareness to select passwords which are not common, and are of suitable length.
<<<<<<< HEAD

## Installation

### Swift Package Manager

The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing the distribution of Swift code. It's integerated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."

Once you have your Swift package set up, add Crackstation to the list of dependencies in your `Package.swift` file:
 ```swift
 dependencies: [
     .package(url: "github.com/SFaheem7/CrackStation", .upToNextMajor(from: "1.0.0"))
 ]
 ```
 
 ## Usage
 
 ### The API 
 
 ``` swift
 public func decrypt(shaHash: String) -> String?
 ```
 This function takes a hash (of upto 3 letters) and decrypts it to the plain-text password.
 
 The initializer is empty and can be called as shown in the snippet below.
 
 ### An Example
 ``` swift
 let myCrackStation = CrackStation()
 myCrackStation.decrypt(shaHash)
 ```
 The first line is the constructs the decrypter, now using this "myCrackstation" we can access the public API "decrypt" which can decrypt the "shahash" provided inside of this function.
 
 ## Author
 Shahzeb Faheem Khan 

=======

## Installation

### Swift Package Manager

The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing the distribution of Swift code. It's integerated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."

Once you have your Swift package set up, add Crackstation to the list of dependencies in your `Package.swift` file:
 ```swift
 dependencies: [
     .package(url: "github.com/SFaheem7/CrackStation", .upToNextMajor(from: "1.0.0"))
 ]
 ```
 
 ## Usage
 
 ### The API 
 
 ``` swift
 public func decrypt(shaHash: String) -> String?
 ```
 This function takes a hash (of upto 3 letters) and decrypts it to the plain-text password.
 
 The initializer is empty and can be called as shown in the snippet below.
 
 ### An Example
 ``` swift
 let myCrackStation = CrackStation()
 myCrackStation.decrypt(shaHash)
 ```
 The first line is the constructs the decrypter, now using this "myCrackstation" we can access the public API "decrypt" which can decrypt the "shahash" provided inside of this function.
 
 ## Author
 Shahzeb Faheem Khan 
>>>>>>> a7b88929fc4f200e60a5b29c652f2d0e9c1304f5
