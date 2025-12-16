package s3;

import R2.z;
import f1.AbstractC0420a;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: s3.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC0851n {
    CLASS(true),
    ANNOTATION_CLASS(true),
    TYPE_PARAMETER(false),
    PROPERTY(true),
    FIELD(true),
    LOCAL_VARIABLE(true),
    VALUE_PARAMETER(true),
    CONSTRUCTOR(true),
    FUNCTION(true),
    PROPERTY_GETTER(true),
    PROPERTY_SETTER(true),
    TYPE(false),
    /* JADX INFO: Fake field, exist only in values array */
    STAR_PROJECTION(false),
    FILE(false),
    /* JADX INFO: Fake field, exist only in values array */
    STAR_PROJECTION(false),
    /* JADX INFO: Fake field, exist only in values array */
    PROPERTY_PARAMETER(false),
    /* JADX INFO: Fake field, exist only in values array */
    STAR_PROJECTION(false),
    /* JADX INFO: Fake field, exist only in values array */
    PROPERTY_PARAMETER(false),
    CLASS_ONLY(false),
    OBJECT(false),
    STANDALONE_OBJECT(false),
    COMPANION_OBJECT(false),
    INTERFACE(false),
    ENUM_CLASS(false),
    ENUM_ENTRY(false),
    LOCAL_CLASS(false),
    /* JADX INFO: Fake field, exist only in values array */
    LOCAL_FUNCTION(false),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_FUNCTION(false),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_FUNCTION(false),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_PROPERTY(false),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_PROPERTY_WITH_BACKING_FIELD(false),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_PROPERTY_WITH_DELEGATE(false),
    /* JADX INFO: Fake field, exist only in values array */
    MEMBER_PROPERTY_WITHOUT_FIELD_OR_DELEGATE(false),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_PROPERTY(false),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_PROPERTY_WITH_BACKING_FIELD(false),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_PROPERTY_WITH_DELEGATE(false),
    /* JADX INFO: Fake field, exist only in values array */
    TOP_LEVEL_PROPERTY_WITHOUT_FIELD_OR_DELEGATE(false),
    /* JADX INFO: Fake field, exist only in values array */
    BACKING_FIELD(true),
    /* JADX INFO: Fake field, exist only in values array */
    INITIALIZER(false),
    /* JADX INFO: Fake field, exist only in values array */
    DESTRUCTURING_DECLARATION(false),
    /* JADX INFO: Fake field, exist only in values array */
    LAMBDA_EXPRESSION(false),
    /* JADX INFO: Fake field, exist only in values array */
    ANONYMOUS_FUNCTION(false),
    /* JADX INFO: Fake field, exist only in values array */
    OBJECT_LITERAL(false);


    /* renamed from: d, reason: collision with root package name */
    public static final HashMap f9054d = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9075c;

    static {
        for (EnumC0851n enumC0851n : values()) {
            f9054d.put(enumC0851n.name(), enumC0851n);
        }
        EnumC0851n[] enumC0851nArrValues = values();
        ArrayList arrayList = new ArrayList();
        for (EnumC0851n enumC0851n2 : enumC0851nArrValues) {
            if (enumC0851n2.f9075c) {
                arrayList.add(enumC0851n2);
            }
        }
        R2.m.j1(arrayList);
        R2.i.x0(values());
        EnumC0851n enumC0851n3 = ANNOTATION_CLASS;
        EnumC0851n enumC0851n4 = CLASS;
        R2.n.y0(enumC0851n3, enumC0851n4);
        R2.n.y0(LOCAL_CLASS, enumC0851n4);
        R2.n.y0(CLASS_ONLY, enumC0851n4);
        EnumC0851n enumC0851n5 = COMPANION_OBJECT;
        EnumC0851n enumC0851n6 = OBJECT;
        R2.n.y0(enumC0851n5, enumC0851n6, enumC0851n4);
        R2.n.y0(STANDALONE_OBJECT, enumC0851n6, enumC0851n4);
        R2.n.y0(INTERFACE, enumC0851n4);
        R2.n.y0(ENUM_CLASS, enumC0851n4);
        EnumC0851n enumC0851n7 = ENUM_ENTRY;
        EnumC0851n enumC0851n8 = PROPERTY;
        EnumC0851n enumC0851n9 = FIELD;
        R2.n.y0(enumC0851n7, enumC0851n8, enumC0851n9);
        EnumC0851n enumC0851n10 = PROPERTY_SETTER;
        AbstractC0420a.V(enumC0851n10);
        EnumC0851n enumC0851n11 = PROPERTY_GETTER;
        AbstractC0420a.V(enumC0851n11);
        AbstractC0420a.V(FUNCTION);
        EnumC0851n enumC0851n12 = FILE;
        AbstractC0420a.V(enumC0851n12);
        EnumC0841d enumC0841d = EnumC0841d.CONSTRUCTOR_PARAMETER;
        EnumC0851n enumC0851n13 = VALUE_PARAMETER;
        z.A1(new Q2.e(enumC0841d, enumC0851n13), new Q2.e(EnumC0841d.FIELD, enumC0851n9), new Q2.e(EnumC0841d.PROPERTY, enumC0851n8), new Q2.e(EnumC0841d.FILE, enumC0851n12), new Q2.e(EnumC0841d.PROPERTY_GETTER, enumC0851n11), new Q2.e(EnumC0841d.PROPERTY_SETTER, enumC0851n10), new Q2.e(EnumC0841d.RECEIVER, enumC0851n13), new Q2.e(EnumC0841d.SETTER_PARAMETER, enumC0851n13), new Q2.e(EnumC0841d.PROPERTY_DELEGATE_FIELD, enumC0851n9));
    }

    EnumC0851n(boolean z4) {
        this.f9075c = z4;
    }
}
