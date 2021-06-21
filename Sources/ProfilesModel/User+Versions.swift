//
// Created by Paul Schifferer on 6/16/21.
//

import Fluent


public extension User {
    enum v20210620 {
        // schema
        static let schemaName = "users"

        // properties
        static let name = FieldKey(stringLiteral: "name")
        static let username = FieldKey(stringLiteral: "username")
        static let thirdPartyAuth = FieldKey(stringLiteral: "thirdPartyAuth")
        static let thirdPartyAuthId = FieldKey(stringLiteral: "thirdPartyAuthId")
        static let email = FieldKey(stringLiteral: "email")
        static let deletedAt = FieldKey(stringLiteral: "deletedAt")
        static let createdAt = FieldKey(stringLiteral: "createdAt")
        static let updatedAt = FieldKey(stringLiteral: "updatedAt")
    }
}
