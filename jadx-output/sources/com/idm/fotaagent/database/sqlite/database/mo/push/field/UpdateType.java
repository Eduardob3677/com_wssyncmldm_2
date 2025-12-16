package com.idm.fotaagent.database.sqlite.database.mo.push.field;

import B.f;

/* loaded from: classes.dex */
public enum UpdateType implements TypeLengthValueField {
    Normal((byte) 0),
    Important((byte) 2);

    private final byte code;

    UpdateType(byte b3) {
        this.code = b3;
    }

    public static UpdateType of(byte b3) {
        for (UpdateType updateType : values()) {
            if (updateType.code == b3) {
                return updateType;
            }
        }
        throw new IllegalArgumentException(f.t(b3, "code: "));
    }

    @Override // com.idm.fotaagent.database.sqlite.database.mo.push.field.Field
    public byte toCode() {
        return this.code;
    }
}
