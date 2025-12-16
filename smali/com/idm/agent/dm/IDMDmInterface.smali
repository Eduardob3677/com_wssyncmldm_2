.class public interface abstract Lcom/idm/agent/dm/IDMDmInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DM_APPADDR:Ljava/lang/String; = "/AppAddr/"

.field public static final DM_AUTH:Ljava/lang/String; = "/AppAuth/"

.field public static final DM_PORT:Ljava/lang/String; = "/Port/"

.field public static final IDM_APPID_SYNCMLDL:I = 0x1

.field public static final IDM_APPID_SYNCMLDM:I = 0x0

.field public static final IDM_APPID_SYNCMLMAXAPP:I = 0x2

.field public static final IDM_ATOMIC_FAILED:I = 0x2

.field public static final IDM_ATOMIC_PROCEEDING:I = 0x1

.field public static final IDM_ATOMIC_SEQUENCE_NONE:I = 0x0

.field public static final IDM_AUTH_AUTHENTICATED:I = 0x3

.field public static final IDM_AUTH_AUTHENTICATION_REQUIRED:I = 0x2

.field public static final IDM_AUTH_LEVEL_CLCRED:Ljava/lang/String; = "CLCRED"

.field public static final IDM_AUTH_LEVEL_HTTP:Ljava/lang/String; = "HTTP"

.field public static final IDM_AUTH_LEVEL_OBEX:Ljava/lang/String; = "OBEX"

.field public static final IDM_AUTH_LEVEL_SRVCRED:Ljava/lang/String; = "SRVCRED"

.field public static final IDM_AUTH_NONE:I = 0x0

.field public static final IDM_AUTH_UNAUTHENTICATED:I = 0x1

.field public static final IDM_DEVDETAIL_PATH:Ljava/lang/String; = "./DevDetail"

.field public static final IDM_DEVDETAIL_PATH_FWV:Ljava/lang/String; = "./DevDetail/FwV"

.field public static final IDM_DEVINFO_PATH:Ljava/lang/String; = "./DevInfo"

.field public static final IDM_DEVINFO_PATH_BEARER:Ljava/lang/String; = "./DevInfo/Bearer"

.field public static final IDM_DEVINFO_PATH_DEVICEID:Ljava/lang/String; = "./DevInfo/DevId"

.field public static final IDM_DEVINFO_PATH_DMVERSION:Ljava/lang/String; = "./DevInfo/DmV"

.field public static final IDM_DEVINFO_PATH_EXT:Ljava/lang/String; = "./DevInfo/Ext"

.field public static final IDM_DEVINFO_PATH_LANGUAGE:Ljava/lang/String; = "./DevInfo/Lang"

.field public static final IDM_DEVINFO_PATH_MANUFACTURER:Ljava/lang/String; = "./DevInfo/Man"

.field public static final IDM_DEVINFO_PATH_MODEL:Ljava/lang/String; = "./DevInfo/Mod"

.field public static final IDM_DMACC_CLIENT:I = 0x2

.field public static final IDM_DMACC_PATH:Ljava/lang/String; = "./DMAcc"

.field public static final IDM_DMACC_PATH_AAUTHDATA:Ljava/lang/String; = "/AAuthData"

.field public static final IDM_DMACC_PATH_AAUTHLEVEL:Ljava/lang/String; = "/AAuthLevel"

.field public static final IDM_DMACC_PATH_AAUTHNAME:Ljava/lang/String; = "/AAuthName"

.field public static final IDM_DMACC_PATH_AAUTHPREF:Ljava/lang/String; = "/AAuthPref"

.field public static final IDM_DMACC_PATH_AAUTHSECRET:Ljava/lang/String; = "/AAuthSecret"

.field public static final IDM_DMACC_PATH_AAUTHTYPE:Ljava/lang/String; = "/AAuthType"

.field public static final IDM_DMACC_PATH_ADDR:Ljava/lang/String; = "/Addr"

.field public static final IDM_DMACC_PATH_ADDRTYPE:Ljava/lang/String; = "/AddrType"

.field public static final IDM_DMACC_PATH_APPADDR:Ljava/lang/String; = "/AppAddr"

.field public static final IDM_DMACC_PATH_APPADDR_X:Ljava/lang/String; = "/AppAddrX"

.field public static final IDM_DMACC_PATH_APPAUTH:Ljava/lang/String; = "/AppAuth"

.field public static final IDM_DMACC_PATH_APPAUTH_X_CLIENT:Ljava/lang/String; = "/Client"

.field public static final IDM_DMACC_PATH_APPAUTH_X_SERVER:Ljava/lang/String; = "/Server"

.field public static final IDM_DMACC_PATH_APPID:Ljava/lang/String; = "/AppID"

.field public static final IDM_DMACC_PATH_CONREF:Ljava/lang/String; = "/ConRef"

.field public static final IDM_DMACC_PATH_NAME:Ljava/lang/String; = "/Name"

.field public static final IDM_DMACC_PATH_PORT:Ljava/lang/String; = "/Port"

.field public static final IDM_DMACC_PATH_PORTNUMBER:Ljava/lang/String; = "/PortNbr"

.field public static final IDM_DMACC_PATH_PORT_X:Ljava/lang/String; = "/PortX"

.field public static final IDM_DMACC_PATH_PREFCONREF:Ljava/lang/String; = "/PrefConRef"

.field public static final IDM_DMACC_PATH_SERVERID:Ljava/lang/String; = "/ServerID"

.field public static final IDM_DMACC_PATH_TOCONREF:Ljava/lang/String; = "/ToConRef"

.field public static final IDM_DMACC_PATH_TOCONREF_X:Ljava/lang/String; = "/Connectivity Reference Name"

.field public static final IDM_DMACC_SERVER:I = 0x1

.field public static final IDM_DM_INITTYPE_NONE:I = 0x0

.field public static final IDM_DM_VERSION:Ljava/lang/String; = "1.2"

.field public static final IDM_EXTRA_MSG_SIZE:I = 0x32

.field public static final IDM_FILE_DM_SESSION:Ljava/lang/String; = "dmsession"

.field public static final IDM_FILE_EXTENSION_WBXML:Ljava/lang/String; = ".wbxml"

.field public static final IDM_FILE_EXTENSION_XML:Ljava/lang/String; = ".xml"

.field public static final IDM_INBOX_PATH:Ljava/lang/String; = "./Inbox"

.field public static final IDM_INITTYPE_DEVICE:I = 0x3

.field public static final IDM_INITTYPE_SERVER:I = 0x2

.field public static final IDM_INITTYPE_USER:I = 0x1

.field public static final IDM_MAX_MSG_SIZE:I = 0x2800

.field public static final IDM_MAX_OBJ_SIZE:I = 0x100000

.field public static final IDM_MIMETYPE_SYNCMLDM_SUPPORT:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field public static final IDM_SEQUENCE_FAILED:I = 0x4

.field public static final IDM_SEQUENCE_PROCEEDING:I = 0x3

.field public static final IDM_STATE_END:I = 0x6

.field public static final IDM_STATE_ERROR:I = 0x4

.field public static final IDM_STATE_INIT:I = 0x1

.field public static final IDM_STATE_MANAGEMENT_PROCESSING:I = 0x3

.field public static final IDM_STATE_SESSION_ABORTED:I = 0x5

.field public static final IDM_STATE_UNAUTHORIZED:I = 0x2

.field public static final TNDS_GET_SUPPORT_TYPE:Ljava/lang/String; = "XML"
