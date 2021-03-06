//
//  Created by Eric Firestone on 7/17/20.
//

import Foundation

extension WriteBuffer {

    // MARK: - Writing

    func writeVarint(_ value: UInt32, at index: Int) {
        // Because an unsigned (positive) varint will only use as many bytes as it needs we can
        // safely up-cast a 32-bit value to a 64-bit one for encoding purposes.
        writeVarint(UInt64(value), at: index)
    }

    /**
     * Encode a UInt64 into writable varint representation data. `value` is treated  unsigned, so it
     won't be sign-extended if negative.
     */
    func writeVarint(_ value: UInt64, at index: Int) {
        var index = index
        var value = value

        while value > 0x7f {
            let byte = UInt8((value & 0x7f) | 0x80)
            set(byte, at: index)
            index += 1
            value = value >> 7
        }
        set(UInt8(value), at: index)
    }

}
