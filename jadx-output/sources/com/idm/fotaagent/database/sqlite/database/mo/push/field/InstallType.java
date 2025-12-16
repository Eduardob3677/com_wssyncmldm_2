package com.idm.fotaagent.database.sqlite.database.mo.push.field;

import B.f;

/* loaded from: classes.dex */
public enum InstallType implements TypeLengthValueField {
    Normal((byte) 0),
    Force((byte) 1);

    private final byte code;

    InstallType(byte b3) {
        this.code = b3;
    }

    public static InstallType of(byte b3) {
        for (InstallType installType : values()) {
            if (installType.code == b3) {
                return installType;
            }
        }
        throw new IllegalArgumentException(f.t(b3, "code: "));
    }

    @Override // com.idm.fotaagent.database.sqlite.database.mo.push.field.Field
    public byte toCode() {
        return this.code;
    }
}
