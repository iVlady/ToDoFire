//
//  User.swift
//  ToDoFire
//
//  Created by Vlad Vinogrotskiy on 30.09.2021.
//
import Firebase
import FirebaseAuth

struct User {
    
    let uid: String
    let email: String
    
    init (user: FirebaseAuth.User) {
        self.uid = user.uid
        self.email = user.email!
    }
}


