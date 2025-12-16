.class public interface abstract Lcom/idm/providers/mo/IDMMoInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDM_ACL_ADD:Ljava/lang/String; = "Add=*"

.field public static final IDM_ACL_ADD_REPLACE:Ljava/lang/String; = "Add=*&Replace=*"

.field public static final IDM_ACL_ADD_REPLACE_DELETE:Ljava/lang/String; = "Add=*&Replace=*&Delete=*"

.field public static final IDM_ACL_DEFAULT:Ljava/lang/String; = "Get=*&Add=*&Replace=*&Delete=*"

.field public static final IDM_ACL_DELETE:Ljava/lang/String; = "Delete=*"

.field public static final IDM_ACL_EXEC:Ljava/lang/String; = "Exec=*"

.field public static final IDM_ACL_GET:Ljava/lang/String; = "Get=*"

.field public static final IDM_ACL_GET_ADD:Ljava/lang/String; = "Get=*&Add=*"

.field public static final IDM_ACL_GET_REPLACE:Ljava/lang/String; = "Get=*&Replace=*"

.field public static final IDM_ACL_REPLACE:Ljava/lang/String; = "Replace=*"

.field public static final IDM_AUTHORITY:Ljava/lang/String; = "com.idm.providers.dm"

.field public static final IDM_DEFUALT_DMACC_APPADDR_X_ADDR:Ljava/lang/String; = "./DMAcc/x/AppAddr/1/Addr"

.field public static final IDM_DEFUALT_DMACC_APPADDR_X_PORT_X_PORTNUMBER:Ljava/lang/String; = "./DMAcc/x/AppAddr/1/Port/1/PortNbr"

.field public static final IDM_DEFUALT_DMACC_APPAUTH_CLIENT_AAUTDATA:Ljava/lang/String; = "./DMAcc/x/AppAuth/client/AAuthData"

.field public static final IDM_DEFUALT_DMACC_APPAUTH_CLIENT_AAUTHNAME:Ljava/lang/String; = "./DMAcc/x/AppAuth/client/AAuthName"

.field public static final IDM_DEFUALT_DMACC_APPAUTH_CLIENT_AAUTHTYPE:Ljava/lang/String; = "./DMAcc/x/AppAuth/client/AAuthType"

.field public static final IDM_DEFUALT_DMACC_APPAUTH_CLIENT_AAUTSECRET:Ljava/lang/String; = "./DMAcc/x/AppAuth/client/AAuthSecret"

.field public static final IDM_DEFUALT_DMACC_APPAUTH_SERVER_AAUTDATA:Ljava/lang/String; = "./DMAcc/x/AppAuth/server/AAuthData"

.field public static final IDM_DEFUALT_DMACC_APPAUTH_SERVER_AAUTHNAME:Ljava/lang/String; = "./DMAcc/x/AppAuth/server/AAuthName"

.field public static final IDM_DEFUALT_DMACC_APPAUTH_SERVER_AAUTHTYPE:Ljava/lang/String; = "./DMAcc/x/AppAuth/server/AAuthType"

.field public static final IDM_DEFUALT_DMACC_APPAUTH_SERVER_AAUTSECRET:Ljava/lang/String; = "./DMAcc/x/AppAuth/server/AAuthSecret"

.field public static final IDM_DEFUALT_DMACC_NAME:Ljava/lang/String; = "./DMAcc/x/Name"

.field public static final IDM_DEFUALT_DMACC_SERVERID:Ljava/lang/String; = "./DMAcc/x/ServerID"

.field public static final IDM_DEFUALT_DMACC_X:Ljava/lang/String; = "./DMAcc/x"

.field public static final IDM_MO_CONTENT_URI:Landroid/net/Uri;

.field public static final IDM_MO_INBOX_PATH:Ljava/lang/String; = "./Inbox"

.field public static final IDM_MO_ROOT_PATH:Ljava/lang/String; = "."

.field public static final IDM_MO_TYPE_DEVDETAIL:Ljava/lang/String; = "urn:oma:mo:oma-dm-devdetail:1.0"

.field public static final IDM_MO_TYPE_DEVINFO:Ljava/lang/String; = "urn:oma:mo:oma-dm-devinfo:1.0"

.field public static final IDM_MO_TYPE_DMACC:Ljava/lang/String; = "urn:oma:mo:oma-dm-dmacc:1.0"

.field public static final IDM_MO_TYPE_INBOX:Ljava/lang/String; = "urn:oma:mo:oma-dm-inbox:1.0"

.field public static final IDM_SCOPE_DEFAULT:I = 0x0

.field public static final IDM_SCOPE_DYNAMIC:I = 0x2

.field public static final IDM_SCOPE_PERMANENT:I = 0x1

.field public static final IDM_XNODE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.idm.providers.dm/mo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/idm/providers/mo/IDMMoInterface;->IDM_MO_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.idm.providers.dm/xnode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/idm/providers/mo/IDMMoInterface;->IDM_XNODE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
