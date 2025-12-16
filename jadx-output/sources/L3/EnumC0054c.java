package L3;

/* renamed from: L3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC0054c implements R3.r {
    BYTE(0),
    CHAR(1),
    SHORT(2),
    INT(3),
    LONG(4),
    FLOAT(5),
    DOUBLE(6),
    BOOLEAN(7),
    STRING(8),
    CLASS(9),
    ENUM(10),
    ANNOTATION(11),
    ARRAY(12);


    /* renamed from: c, reason: collision with root package name */
    public final int f1592c;

    EnumC0054c(int i5) {
        this.f1592c = i5;
    }

    public static EnumC0054c b(int i5) {
        switch (i5) {
            case 0:
                return BYTE;
            case 1:
                return CHAR;
            case 2:
                return SHORT;
            case 3:
                return INT;
            case 4:
                return LONG;
            case 5:
                return FLOAT;
            case 6:
                return DOUBLE;
            case 7:
                return BOOLEAN;
            case 8:
                return STRING;
            case 9:
                return CLASS;
            case 10:
                return ENUM;
            case 11:
                return ANNOTATION;
            case 12:
                return ARRAY;
            default:
                return null;
        }
    }

    @Override // R3.r
    public final int a() {
        return this.f1592c;
    }
}
