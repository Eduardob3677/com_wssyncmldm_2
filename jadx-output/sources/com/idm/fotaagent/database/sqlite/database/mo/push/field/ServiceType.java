package com.idm.fotaagent.database.sqlite.database.mo.push.field;

import B.f;
import h0.AbstractC0432c;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public enum ServiceType implements TypeLengthValueField {
    Optional((byte) 79),
    Mandatory((byte) 77),
    Emergency((byte) 69);

    private final byte code;

    ServiceType(byte b3) {
        this.code = b3;
    }

    public static ServiceType of(String str) {
        if (str == null) {
            throw new IllegalArgumentException(AbstractC0432c.i("code: ", str));
        }
        byte[] bytes = str.getBytes(StandardCharsets.US_ASCII);
        if (bytes.length == 1) {
            return of(bytes[0]);
        }
        throw new IllegalArgumentException("code: ".concat(str));
    }

    @Override // com.idm.fotaagent.database.sqlite.database.mo.push.field.Field
    public byte toCode() {
        return this.code;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Character.toString((char) toCode());
    }

    public static ServiceType of(byte b3) {
        for (ServiceType serviceType : values()) {
            if (serviceType.toCode() == b3) {
                return serviceType;
            }
        }
        throw new IllegalArgumentException(f.t(b3, "code: "));
    }
}
