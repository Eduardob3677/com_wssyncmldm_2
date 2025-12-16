.class interface abstract Lcom/idm/core/tnds/IDMTndsXmlWbxmlDefine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TNDS_ACCESSTYPE:I = 0x45

.field public static final TNDS_ACL:I = 0x46

.field public static final TNDS_ADD:I = 0x47

.field public static final TNDS_B64_FORMAT:I = 0x48

.field public static final TNDS_BIN_FORMAT:I = 0x49

.field public static final TNDS_BOOL_FORMAT:I = 0x4a

.field public static final TNDS_CASESENSE:I = 0x4c

.field public static final TNDS_CHR_FORMAT:I = 0x4b

.field public static final TNDS_CIS:I = 0x4d

.field public static final TNDS_COPY:I = 0x4e

.field public static final TNDS_CS:I = 0x4f

.field public static final TNDS_DATE_FORMAT:I = 0x50

.field public static final TNDS_DDFNAME:I = 0x51

.field public static final TNDS_DEFAULTVALUE:I = 0x52

.field public static final TNDS_DELETE:I = 0x53

.field public static final TNDS_DESCRIPTION:I = 0x54

.field public static final TNDS_DFFORMAT:I = 0x55

.field public static final TNDS_DFPROPERTIES:I = 0x56

.field public static final TNDS_DFTITLE:I = 0x57

.field public static final TNDS_DFTYPE:I = 0x58

.field public static final TNDS_DYNAMIC:I = 0x59

.field public static final TNDS_EXEC:I = 0x5a

.field public static final TNDS_FLOAT_FORMAT:I = 0x5b

.field public static final TNDS_FORMAT:I = 0x5c

.field public static final TNDS_GET:I = 0x5d

.field public static final TNDS_INCLUDE_TAG_MAX_NUM:I = 0x1e

.field public static final TNDS_INT_FORAMT:I = 0x5e

.field public static final TNDS_MAN:I = 0x5f

.field public static final TNDS_MAX:I = 0x7d

.field public static final TNDS_MGMTTREE:I = 0x60

.field public static final TNDS_MIME:I = 0x61

.field public static final TNDS_MOD:I = 0x62

.field public static final TNDS_NAME:I = 0x63

.field public static final TNDS_NOADNAME:I = 0x66

.field public static final TNDS_NODE:I = 0x64

.field public static final TNDS_NODE_FORAMT:I = 0x65

.field public static final TNDS_NULL_FORMAT:I = 0x67

.field public static final TNDS_OCCURRENCE:I = 0x68

.field public static final TNDS_ONE:I = 0x69

.field public static final TNDS_ONEORMORE:I = 0x6a

.field public static final TNDS_ONEORN:I = 0x6b

.field public static final TNDS_PATH:I = 0x6c

.field public static final TNDS_PERMANENT:I = 0x6d

.field public static final TNDS_REPLACE:I = 0x6e

.field public static final TNDS_RTPROPERTIES:I = 0x6f

.field public static final TNDS_SCOPE:I = 0x70

.field public static final TNDS_SIZE:I = 0x71

.field public static final TNDS_SYNCML_SPECIAL_VALUE:I = 0x88

.field public static final TNDS_TAG_BRACKET_NUM:I = 0x3

.field public static final TNDS_TAG_NAME_MAX_LEN:I = 0x14

.field public static final TNDS_TAG_NUM:I = 0x38

.field public static final TNDS_TIME_FORMAT:I = 0x72

.field public static final TNDS_TITLE:I = 0x73

.field public static final TNDS_TSTAMP:I = 0x74

.field public static final TNDS_TYPE:I = 0x75

.field public static final TNDS_TYPE_DATA_MAX_LEN:I = 0x10

.field public static final TNDS_VALUE:I = 0x76

.field public static final TNDS_VERDTD:I = 0x77

.field public static final TNDS_VERNO:I = 0x78

.field public static final TNDS_XML_FORMAT:I = 0x79

.field public static final TNDS_ZEROORMORE:I = 0x7a

.field public static final TNDS_ZEROORN:I = 0x7b

.field public static final TNDS_ZEROORONE:I = 0x7c

.field public static final WBXML_CHARACTER_SET_LEN:I = 0x1

.field public static final WBXML_CLOSE_BRACKET:I = 0x1

.field public static final WBXML_CODEPAGE:I = 0x0

.field public static final WBXML_END_STRING_TAG:I = 0x0

.field public static final WBXML_END_TAG:I = 0x1

.field public static final WBXML_HEADER_LEN:I = 0x1f

.field public static final WBXML_PUBLIC_ID_LEN:I = 0x2

.field public static final WBXML_START_STRING_TAG:I = 0x3

.field public static final WBXML_STRING_TABLE_LEN:I = 0x1b

.field public static final WBXML_TNDS_CODEPAGE_LEN:I = 0x2

.field public static final WBXML_VERSION:I = 0x2

.field public static final WBXML_VERSION_LEN:I = 0x1

.field public static final XML_CLOSE_TAG:C = '>'

.field public static final XML_LINE_FEED:C = '\n'

.field public static final XML_OPEN_TAG:C = '<'

.field public static final XML_SLASH:C = '/'

.field public static final XML_SYNCML_HEX_VALUE:I = 0x6d

.field public static final gTndsWbxmlHeaderInfo:[C

.field public static final gszTndsTokenStr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 56

    const-string v54, "ZeroOrN"

    const-string v55, "ZeroOrOne"

    const-string v0, "AccessType"

    const-string v1, "ACL"

    const-string v2, "Add"

    const-string v3, "b64"

    const-string v4, "bin"

    const-string v5, "bool"

    const-string v6, "chr"

    const-string v7, "CaseSense"

    const-string v8, "CIS"

    const-string v9, "Copy"

    const-string v10, "CS"

    const-string v11, "date"

    const-string v12, "DDFName"

    const-string v13, "DefaultValue"

    const-string v14, "Delete"

    const-string v15, "Description"

    const-string v16, "DFFormat"

    const-string v17, "DFProperties"

    const-string v18, "DFTitle"

    const-string v19, "DFType"

    const-string v20, "Dynamic"

    const-string v21, "Exec"

    const-string v22, "float"

    const-string v23, "Format"

    const-string v24, "Get"

    const-string v25, "int"

    const-string v26, "Man"

    const-string v27, "MgmtTree"

    const-string v28, "MIME"

    const-string v29, "Mod"

    const-string v30, "Name"

    const-string v31, "Node"

    const-string v32, "node"

    const-string v33, "NodeName"

    const-string v34, "null"

    const-string v35, "Occurrence"

    const-string v36, "One"

    const-string v37, "OneOrMore"

    const-string v38, "OneOrN"

    const-string v39, "Path"

    const-string v40, "Permanent"

    const-string v41, "Replace"

    const-string v42, "RTProperties"

    const-string v43, "Scope"

    const-string v44, "Size"

    const-string v45, "time"

    const-string v46, "Title"

    const-string v47, "TStamp"

    const-string v48, "Type"

    const-string v49, "Value"

    const-string v50, "VerDTD"

    const-string v51, "VerNo"

    const-string v52, "xml"

    const-string v53, "ZerOrMore"

    filled-new-array/range {v0 .. v55}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlDefine;->gszTndsTokenStr:[Ljava/lang/String;

    const/16 v0, 0x1f

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/idm/core/tnds/IDMTndsXmlWbxmlDefine;->gTndsWbxmlHeaderInfo:[C

    return-void

    :array_0
    .array-data 2
        0x2s
        0x0s
        0x0s
        0x6as
        0x1as
        0x2ds
        0x2fs
        0x2fs
        0x4fs
        0x4ds
        0x41s
        0x2fs
        0x2fs
        0x44s
        0x54s
        0x44s
        0x2ds
        0x44s
        0x4ds
        0x2ds
        0x44s
        0x44s
        0x46s
        0x20s
        0x31s
        0x2es
        0x32s
        0x2fs
        0x2fs
        0x45s
        0x4es
    .end array-data
.end method
