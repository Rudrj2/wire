// Code generated by Wire protocol buffer compiler, do not edit.
// Source: squareup.protos.kotlin.NoFields in no_fields.proto
import Foundation
import Wire

public struct NoFields {

    public var unknownFields: Data = .init()

    public init() {
    }

}

extension NoFields : Equatable {
}

extension NoFields : Hashable {
}

extension NoFields : Proto2Codable {
    public init(from reader: ProtoReader) throws {
        let token = try reader.beginMessage()
        while let tag = try reader.nextTag(token: token) {
            switch tag {
            default: try reader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try reader.endMessage(token: token)

    }

    public func encode(to writer: ProtoWriter) throws {
        try writer.writeUnknownFields(unknownFields)
    }
}

extension NoFields : Codable {
}
