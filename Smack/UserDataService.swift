//
//  UserDataService.swift
//  Smack
//
//  Created by Matt Deuschle on 9/16/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

class UserDataService {

    static let shared = UserDataService()

    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""

    func setUserData(id: String, avatarColor: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = avatarColor
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }

    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }

    func logoutUser() {
        id = ""
        avatarColor = ""
        avatarName = ""
        email = ""
        name = ""
        AuthService.shared.isLoggedIn = false
        AuthService.shared.token = ""
        AuthService.shared.email = ""
        ChannelService.shared.removeAllChannels()
        ChannelService.shared.removeAllMessages()
    }
}
