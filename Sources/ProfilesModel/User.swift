//
// User.swift
// Copyright (c) 2021 Paul Schifferer.
//

import Fluent
import Vapor


public final class User : Model {
    public static let schema = User.v20210620.schemaName

    @ID
    public var id : UUID?

    @Timestamp(key: User.v20210620.createdAt, on: .create)
    public var createdAt : Date?

    @Timestamp(key: User.v20210620.updatedAt, on: .update)
    public var updatedAt : Date?

    @Field(key: User.v20210620.name)
    public var name : String

    @Field(key: User.v20210620.username)
    public var username : String

//    @Field(key: "password")
//    var password : String

    @Children(for: \.$user)
    public var profiles : [Profile]

    @Timestamp(key: User.v20210620.deletedAt, on: .delete)
    public var deletedAt : Date?

    @OptionalField(key: User.v20210620.thirdPartyAuth)
    public var thirdPartyAuth : String?

    @OptionalField(key: User.v20210620.thirdPartyAuthId)
    public var thirdPartyAuthId : String?

    @Field(key: User.v20210620.email)
    public var email : String

//    @OptionalField(key: User.v20210601.profilePicture)
//    var profilePicture : String?

//    @OptionalField(key: User.v20210616.twitterURL)
//    var twitterURL : String?

    public init() {
    }

    public init(id : UUID? = nil, name : String, username : String, // password : String,
                thirdPartyAuth : String? = nil, thirdPartyAuthId : String? = nil,
                email : String) {
        self.id = id
        self.name = name
        self.username = username
//        self.password = password
        self.thirdPartyAuth = thirdPartyAuth
        self.thirdPartyAuthId = thirdPartyAuthId
        self.email = email
//        self.profilePicture = profilePicture
//        self.twitterURL = twitterURL
    }

    public final class Public : Content {
        var id : UUID?
        var name : String
        var username : String

        init(id : UUID?, name : String, username : String) {
            self.id = id
            self.name = name
            self.username = username
        }
    }
}

extension User : Content {}

public extension User {
    func convertToPublic() -> User.Public {
        User.Public(id: self.id, name: self.name, username: self.username)
    }
}

//extension User : ModelAuthenticatable {
//    static let usernameKey = \User.$username
//    static let passwordHashKey = \User.$password
//
//    func verify(password : String) throws -> Bool {
//        try Bcrypt.verify(password, created: self.password)
//    }
//}

extension User : ModelSessionAuthenticatable {}

//extension User : ModelCredentialsAuthenticatable {}
