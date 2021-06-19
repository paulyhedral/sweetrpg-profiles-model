//
// Created by Paul Schifferer on 6/16/21.
//

import Fluent


extension User {
    enum v20210601 {
        static let name = FieldKey(stringLiteral: "name")
        static let username = FieldKey(stringLiteral: "username")
        static let thirdPartyAuth = FieldKey(stringLiteral: "thirdPartyAuth")
        static let thirdPartyAuthId = FieldKey(stringLiteral: "thirdPartyAuthId")
        static let email = FieldKey(stringLiteral: "email")

    }

    enum v20210616 {
        static let deletedAt = FieldKey(stringLiteral: "deletedAt")
        static let createdAt = FieldKey(stringLiteral: "createdAt")
        static let updatedAt = FieldKey(stringLiteral: "updatedAt")
    }
}
