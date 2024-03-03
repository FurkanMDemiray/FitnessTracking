//
//  Auth.swift
//  FitnessTracking
//
//  Created by Melik Demiray on 3.03.2024.
//

import Foundation
import Firebase

struct UserAuth {
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("User Created")
            }
        }
    }
    
    func logIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("User Logged In")
            }
        }
    }
    
    
}
