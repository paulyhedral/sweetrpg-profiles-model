//
// Created by Paul Schifferer on 6/16/21.
//

import Fluent


public extension User {
    public enum v20210620 {
        // schema
        public static let schemaName = "users"

        // properties
        public static let name = FieldKey(stringLiteral: "name")
        public static let username = FieldKey(stringLiteral: "username")
        public static let thirdPartyAuth = FieldKey(stringLiteral: "thirdPartyAuth")
        public static let thirdPartyAuthId = FieldKey(stringLiteral: "thirdPartyAuthId")
        public static let email = FieldKey(stringLiteral: "email")
        public static let deletedAt = FieldKey(stringLiteral: "deletedAt")
        public static let createdAt = FieldKey(stringLiteral: "createdAt")
        public static let updatedAt = FieldKey(stringLiteral: "updatedAt")
    }
}
