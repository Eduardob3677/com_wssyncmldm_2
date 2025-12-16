package com.idm.fotaagent.database.sqlite.database.mo.push.field;

import B.f;

/* loaded from: classes.dex */
public enum Initiator implements Field {
    CLIENT((byte) 0),
    SERVER((byte) 1);

    private final byte code;

    Initiator(byte b3) {
        this.code = b3;
    }

    public static Initiator of(byte b3) {
        for (Initiator initiator : values()) {
            if (initiator.code == b3) {
                return initiator;
            }
        }
        throw new IllegalArgumentException(f.t(b3, "code: "));
    }

    @Override // com.idm.fotaagent.database.sqlite.database.mo.push.field.Field
    public byte toCode() {
        return this.code;
    }
}
