
import Fluent
import Vapor


public final class Profile : Model {
    public static let schema = Profile.v20210620.schemaName

    @ID
    public var id : UUID?

    @Timestamp(key: Profile.v20210620.createdAt, on: .create)
    public var createdAt : Date?

    @Timestamp(key: Profile.v20210620.updatedAt, on: .update)
    public var updatedAt : Date?

    @Timestamp(key: Profile.v20210620.deletedAt, on: .delete)
    public var deletedAt : Date?

    @Parent(key: Profile.v20210620.userId)
    public var user : User

    public init() {
    }

    public init(id : UUID? = nil, userId : User.IDValue) {
        self.id = id
        self.$user.id = userId
    }
}


extension Profile : Content {}
