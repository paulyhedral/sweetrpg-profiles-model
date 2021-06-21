//
// Created by Paul Schifferer on 6/16/21.
//

import Fluent


public extension Profile {
    enum v20210620 {
        // schema
        static let schemaName = "profiles"

        // properties
        static let deletedAt = FieldKey(stringLiteral: "deletedAt")
        static let createdAt = FieldKey(stringLiteral: "createdAt")
        static let updatedAt = FieldKey(stringLiteral: "updatedAt")
    }
}
