//
//  UserStateViewModel.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 21/06/2022.
//

import SwiftUI
import Foundation
import LocalAuthentication

enum UserStateError: Error{
    case signInError, signOutError
}

@MainActor
class UserStateViewModel: ObservableObject {
    @AppStorage("AUTH_KEY") var isLoggedIn = false {
        willSet { objectWillChange.send() }
    }
    // TMP
    @Published var me = User(id: 1, email: "emalo@wevox.eu", password: "azerty123", firstname: "Eden", role: 30)

    // @AppStorage("USER_KEY") var email = "eden" // TMP
    // @Published var password = "eden" // TMP

    @Published var invalid: Bool = false
    
    init() {
        print("Correctly logged on: \(isLoggedIn)")
        print("Current user: \(me.email)")
    }
    
    func authToggle() {
        self.me.password = ""
        withAnimation {
            isLoggedIn.toggle()
        }
    }
    
    func authSignIn(email: String, password: String) {
        guard self.me.email == email else {
            self.invalid = true
            return
        }
        
        guard self.me.password == password else {
            self.invalid = true
            return
        }
        
        // APPEL API
        me = User(id: 1, email: email, password: password, firstname: "Eden", role: 30)
        
        authToggle()
    }
    
    func authBiometry() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Unlock App"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason)
            { success, authenticationError in
                if success {
                    // Authenticated successfully
                    self.isLoggedIn.toggle()
                } else {
                    // There was a problem
                    print("Error during authentication")
                }
            }
        } else {
            // No Biometrics
            print("No Biometrics")
            // -- En cas d'erreur "Thread 1: breakpoint 1.1 (1)",
            // -- il faut activer le FaceID dans le simulator Features > FaceID > Enrolled
       }
    }
            
    func authLogOut() {
        self.invalid = false
        isLoggedIn = false
    }
            
    func authLogPressed() {
        print("Button Pressed")
    }
}


//func getDate(dateString: String) -> Date? {
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
//    dateFormatter.timeZone = TimeZone.current
//    dateFormatter.locale = Locale.current
//    return dateFormatter.date(from: dateString)
//}






/// TMP
//    func signIn(email: String, password: String) async -> Result<Bool, UserStateError>  {
//        isBusy = true
//        do{
//            try await Task.sleep(nanoseconds:  1_000_000_000)
//            if email == "eden" {
//                wrongUsername = 0
//                if password == "eden" {
//                    wrongPassword = 0
//
//                    isLoggedIn = true
//                    isBusy = false
//                    return .success(true)
//
//                } else {
//                    wrongPassword = 2
//                    return .failure(.signInError)
//                }
//            } else {
//                wrongUsername = 2
//                return .failure(.signInError)
//            }
//        } catch{
//            isBusy = false
//            return .failure(.signInError)
//        }
//    }
//
//    func signOut() async -> Result<Bool, UserStateError>  {
//        isBusy = true
//        do{
//            try await Task.sleep(nanoseconds: 1_000_000_000)
//            isLoggedIn = false
//            isBusy = false
//            return .success(true)
//        }catch{
//            isBusy = false
//            return .failure(.signOutError)
//        }
//    }
//
//    func authenticateBiometry() async -> Result<Bool, UserStateError>  {
//        let context = LAContext()
//        var error: NSError?
//
//        print("FACEID")
//
//        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
//            let reason = "We need to unlock your data"
//
//            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) {
//                (success, authenticationError) in
//                if success {
//                    // Authenticated successfully
//                    // isUnlocked = true
//                } else {
//                    // There was a problem
//                }
//            }
//        } else {
//            // No Biometrics
//            print("No Biometrics")
//        }
//    }
