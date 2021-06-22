//
// Created by Paul Schifferer on 6/16/21.
//

import Fluent


public extension Profile {
    public enum v20210620 {
        // schema
        public static let schemaName = "profiles"

        // properties
        public static let userId = FieldKey(stringLiteral: "userId")
        public static let deletedAt = FieldKey(stringLiteral: "deletedAt")
        public static let createdAt = FieldKey(stringLiteral: "createdAt")
        public static let updatedAt = FieldKey(stringLiteral: "updatedAt")
    }
}
