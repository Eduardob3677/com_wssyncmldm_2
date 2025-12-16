package com.idm.fotaagent.database.sqlite.database.mo.push.field;

import B.f;

/* loaded from: classes.dex */
public enum DownloadType implements TypeLengthValueField {
    Normal((byte) 0),
    Force((byte) 1);

    private final byte code;

    DownloadType(byte b3) {
        this.code = b3;
    }

    public static DownloadType of(byte b3) {
        for (DownloadType downloadType : values()) {
            if (downloadType.code == b3) {
                return downloadType;
            }
        }
        throw new IllegalArgumentException(f.t(b3, "code: "));
    }

    @Override // com.idm.fotaagent.database.sqlite.database.mo.push.field.Field
    public byte toCode() {
        return this.code;
    }
}
