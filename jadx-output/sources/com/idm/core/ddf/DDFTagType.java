package com.idm.core.ddf;

import com.idm.core.tnds.IDMTndsConstants;
import java.util.stream.Stream;
import org.xmlpull.v1.XmlPullParser;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'NONE' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class DDFTagType {
    private static final /* synthetic */ DDFTagType[] $VALUES;
    public static final DDFTagType ACCESS_TYPE;
    public static final DDFTagType DF_FORMAT;
    public static final DDFTagType DF_TYPE;
    public static final DDFTagType NODE_NAME;
    public static final DDFTagType NONE;
    public static final DDFTagType SCOPE;
    public static final DDFTagType VALUE;
    private final String name;
    private final DDFParsingStrategy parsingStrategy;

    static {
        DDFParsingStrategy dDFParsingStrategy = DDFParsingStrategy.BETWEEN_TAG;
        DDFTagType dDFTagType = new DDFTagType("NONE", 0, "", dDFParsingStrategy) { // from class: com.idm.core.ddf.DDFTagType.1
            @Override // com.idm.core.ddf.DDFTagType
            public DDFTag toTag(XmlPullParser xmlPullParser) {
                return new DDFTag("", "");
            }
        };
        NONE = dDFTagType;
        DDFTagType dDFTagType2 = new DDFTagType("NODE_NAME", 1, IDMTndsConstants.TNDS_TAG_NODENAME, dDFParsingStrategy);
        NODE_NAME = dDFTagType2;
        DDFParsingStrategy dDFParsingStrategy2 = DDFParsingStrategy.CHILD_TAG_NAME;
        DDFTagType dDFTagType3 = new DDFTagType("ACCESS_TYPE", 2, "AccessType", dDFParsingStrategy2);
        ACCESS_TYPE = dDFTagType3;
        DDFTagType dDFTagType4 = new DDFTagType("SCOPE", 3, "Scope", dDFParsingStrategy2);
        SCOPE = dDFTagType4;
        DDFTagType dDFTagType5 = new DDFTagType("DF_FORMAT", 4, "DFFormat", dDFParsingStrategy2);
        DF_FORMAT = dDFTagType5;
        DDFTagType dDFTagType6 = new DDFTagType("DF_TYPE", 5, "DFType", DDFParsingStrategy.CHILD_TAG_VALUE);
        DF_TYPE = dDFTagType6;
        DDFTagType dDFTagType7 = new DDFTagType("VALUE", 6, "Value", dDFParsingStrategy);
        VALUE = dDFTagType7;
        $VALUES = new DDFTagType[]{dDFTagType, dDFTagType2, dDFTagType3, dDFTagType4, dDFTagType5, dDFTagType6, dDFTagType7};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$of$0(String str, DDFTagType dDFTagType) {
        return dDFTagType.name.equals(str);
    }

    public static DDFTagType of(String str) {
        return (DDFTagType) Stream.of((Object[]) values()).filter(new a(str, 0)).findFirst().orElse(NONE);
    }

    public static DDFTagType valueOf(String str) {
        return (DDFTagType) Enum.valueOf(DDFTagType.class, str);
    }

    public static DDFTagType[] values() {
        return (DDFTagType[]) $VALUES.clone();
    }

    public DDFTag toTag(XmlPullParser xmlPullParser) {
        return new DDFTag(this.name, this.parsingStrategy.parseValue(xmlPullParser));
    }

    private DDFTagType(String str, int i5, String str2, DDFParsingStrategy dDFParsingStrategy) {
        this.name = str2;
        this.parsingStrategy = dDFParsingStrategy;
    }
}
