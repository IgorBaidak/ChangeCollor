//
//  UserDefaultsCollorService.swift
//  ChangeCollor
//
//  Created by Igor Baidak on 9.08.22.
//

import Foundation

//final class UserDefaultsService {
//    static func saveUserModel(userModel: UserModelCollor) {
//        UserDefaults.standard.set(userModel.redCollor, forKey: UserDefaults.Keys.redCollor.rawValue)
//        UserDefaults.standard.set(userModel.greenCollor, forKey: UserDefaults.Keys.greenCollor.rawValue)
//        UserDefaults.standard.set(userModel.blueCollor, forKey: UserDefaults.Keys.blueCollor.rawValue)
//    }
//    static func getUserModel() -> UserModelCollor? {
//
//        guard let redCollor = UserDefaults.standard.string(forKey: UserDefaults.Keys.redCollor.rawValue),
//              let greenCollor = UserDefaults.standard.string(forKey: UserDefaults.Keys.greenCollor.rawValue)
//              let blueCollor = UserDefaults.standard.string(forKey: UserDefaults.Keys.blueCollor.rawValue) else { return nil }
//        let userCollor = UserModelCollor(redCollor: redCollor, greenCollor: greenCollor, blueCollor: blueCollor)
//        return userCollor
//    }
