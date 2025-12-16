.class public Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;
.super Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
        "Lcom/idm/service/actioninfo/IDMActionInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final DOWNLOAD_FUMO_STATUSES:[I

.field public static final FILE_PROTOCOL:Ljava/lang/String; = "file://"

.field public static final IDM_DB_ACTIONINFO:Ljava/lang/String; = "actioninfo"

.field public static final IDM_DB_ACTIONINFO_ALERTCOMMANDNODE:Ljava/lang/String; = "alertCommandNode"

.field public static final IDM_DB_ACTIONINFO_APPID:Ljava/lang/String; = "appId"

.field public static final IDM_DB_ACTIONINFO_AUTOINSTALL_BY_SCHEDULEDOWNLOAD:Ljava/lang/String; = "postponedownloadautoinstall"

.field public static final IDM_DB_ACTIONINFO_COMMAND:Ljava/lang/String; = "command"

.field public static final IDM_DB_ACTIONINFO_CORRELATOR:Ljava/lang/String; = "correlator"

.field public static final IDM_DB_ACTIONINFO_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS actioninfo (_id TEXT PRIMARY KEY,inittype INTEGER,serverId TEXT,sessionid TEXT,notiId INTEGER,appId INTEGER,command INTEGER,alertCommandNode TEXT,downloadpath TEXT,downloadDescriptorUrl TEXT,objectUrl TEXT,notifyurl TEXT,downloadReportCode INTEGER,objectsize TEXT,downloadType TEXT,reportUrl TEXT,correlator TEXT,pushuimode INTEGER,deltaindex INTEGER,inituimode INTEGER,description TEXT,isupdatereportingsession INTEGER,dmresultcode TEXT,reusmestate INTEGER,dltotalretrycount INTEGER,dmtotalretrycount INTEGER,dlcurrentretrycount INTEGER,currentdownloadmode INTEGER,notificationdmstartstate INTEGER,sucancel INTEGER,postponedownloadautoinstall INTEGER,installtypeuri TEXT,fumostatus INTEGER);"

.field public static final IDM_DB_ACTIONINFO_CURRENTDOWNLOADMODE:Ljava/lang/String; = "currentdownloadmode"

.field public static final IDM_DB_ACTIONINFO_DELTAINDEX:Ljava/lang/String; = "deltaindex"

.field public static final IDM_DB_ACTIONINFO_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final IDM_DB_ACTIONINFO_DLCURRENTRETRYCOUNT:Ljava/lang/String; = "dlcurrentretrycount"

.field public static final IDM_DB_ACTIONINFO_DLNOTIFYDOWNLOADREPORTCODE:Ljava/lang/String; = "downloadReportCode"

.field public static final IDM_DB_ACTIONINFO_DLTOTALRETRYCOUNT:Ljava/lang/String; = "dltotalretrycount"

.field public static final IDM_DB_ACTIONINFO_DMRESULTCODE:Ljava/lang/String; = "dmresultcode"

.field public static final IDM_DB_ACTIONINFO_DMTOTALRETRYCOUNT:Ljava/lang/String; = "dmtotalretrycount"

.field public static final IDM_DB_ACTIONINFO_DOWNLOADDESCRIPORURL:Ljava/lang/String; = "downloadDescriptorUrl"

.field public static final IDM_DB_ACTIONINFO_DOWNLOADPATH:Ljava/lang/String; = "downloadpath"

.field public static final IDM_DB_ACTIONINFO_DOWNLOADTYPE:Ljava/lang/String; = "downloadType"

.field public static final IDM_DB_ACTIONINFO_FUMOSTATUS:Ljava/lang/String; = "fumostatus"

.field public static final IDM_DB_ACTIONINFO_ID:Ljava/lang/String; = "_id"

.field public static final IDM_DB_ACTIONINFO_INITUIMODE:Ljava/lang/String; = "inituimode"

.field public static final IDM_DB_ACTIONINFO_INITYPE:Ljava/lang/String; = "inittype"

.field public static final IDM_DB_ACTIONINFO_INSTALLTYPEURI:Ljava/lang/String; = "installtypeuri"

.field public static final IDM_DB_ACTIONINFO_INSTALL_NOTIFY_URI:Ljava/lang/String; = "notifyurl"

.field public static final IDM_DB_ACTIONINFO_ISCONTINUOUSUPDATESESSION:Ljava/lang/String; = "isupdatereportingsession"

.field private static final IDM_DB_ACTIONINFO_NOTIFICATIONDMSTARTSTATE:Ljava/lang/String; = "notificationdmstartstate"

.field private static final IDM_DB_ACTIONINFO_NOTIID:Ljava/lang/String; = "notiId"

.field public static final IDM_DB_ACTIONINFO_OBJECTSIZE:Ljava/lang/String; = "objectsize"

.field public static final IDM_DB_ACTIONINFO_OBJECTURL:Ljava/lang/String; = "objectUrl"

.field public static final IDM_DB_ACTIONINFO_PUSHUIMODE:Ljava/lang/String; = "pushuimode"

.field public static final IDM_DB_ACTIONINFO_REPORTURL:Ljava/lang/String; = "reportUrl"

.field private static final IDM_DB_ACTIONINFO_RESUMESTATE:Ljava/lang/String; = "reusmestate"

.field public static final IDM_DB_ACTIONINFO_SERVERID:Ljava/lang/String; = "serverId"

.field public static final IDM_DB_ACTIONINFO_SESSIONID:Ljava/lang/String; = "sessionid"

.field public static final IDM_DB_ACTIONINFO_SUCANCEL:Ljava/lang/String; = "sucancel"

.field static final REPORT_FUMO_STATUSES:[I


# instance fields
.field private final securityAESCrypt:Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

.field private taskId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1e

    const/16 v1, 0xf2

    const/16 v2, 0xc8

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->DOWNLOAD_FUMO_STATUSES:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->REPORT_FUMO_STATUSES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x41
        0x50
        0x64
        0xf1
        0xe6
        0xf0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object p2, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->taskId:Ljava/lang/String;

    new-instance p1, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-direct {p1}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->securityAESCrypt:Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmGetEnablerDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private getTaskId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->taskId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/a;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/a;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private varargs isFumoStatusIn([I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getFumoStatus()I

    move-result p0

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public createContValuesFrom(Lcom/idm/service/actioninfo/IDMActionInfo;)Landroid/content/ContentValues;
    .locals 3

    new-instance p0, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetInitType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "inittype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "serverId"

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sessionid"

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAppId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCommand()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "alertCommandNode"

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetAlertCommandNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "downloadpath"

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadDescriptorUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmEncryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadDescriptorUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetObjectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmEncryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetNotifyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmEncryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "notifyurl"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlNotifyDownloadReportCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "downloadReportCode"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetObjectSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "objectsize"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "downloadType"

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDownloadType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "reportUrl"

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetReportUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "correlator"

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetCorrelator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDeltaIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "deltaindex"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetInitUiMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "inituimode"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetPushUiMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "pushuimode"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "description"

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetIsContinuousUpdateSession()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "isupdatereportingsession"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p0, "dmresultcode"

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlTotalRetryCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "dltotalretrycount"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDmTotalRetryCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "dmtotalretrycount"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetDlCurrentRetryCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "dlcurrentretrycount"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSuCancel()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "sucancel"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetFumoStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "fumostatus"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createContValuesFrom(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    check-cast p1, Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->createContValuesFrom(Lcom/idm/service/actioninfo/IDMActionInfo;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public createEntityFrom(Landroid/database/Cursor;)Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 3

    new-instance p0, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;-><init>()V

    new-instance v0, Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-direct {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;-><init>()V

    const-string v1, "inittype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetInitType(I)V

    const-string v1, "serverId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetServerId(Ljava/lang/String;)V

    const-string v1, "sessionid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetSessionId(Ljava/lang/String;)V

    const-string v1, "appId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAppId(I)V

    const-string v1, "command"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCommand(I)V

    const-string v1, "alertCommandNode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetAlertCommandNode(Ljava/lang/String;)V

    const-string v1, "downloadpath"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDownloadPath(Ljava/lang/String;)V

    const-string v1, "downloadDescriptorUrl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmDecryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDownloadDescriptorUrl(Ljava/lang/String;)V

    const-string v1, "objectUrl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmDecryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetObjectUrl(Ljava/lang/String;)V

    const-string v1, "notifyurl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmDecryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetNotifyUrl(Ljava/lang/String;)V

    const-string p0, "downloadReportCode"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDlNotifyDownloadReportCode(I)V

    const-string p0, "objectsize"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetObjectSize(J)V

    const-string p0, "downloadType"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDownloadType(Ljava/lang/String;)V

    const-string p0, "reportUrl"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetReportUrl(Ljava/lang/String;)V

    const-string p0, "correlator"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetCorrelator(Ljava/lang/String;)V

    const-string p0, "pushuimode"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetPushUiMode(I)V

    const-string p0, "deltaindex"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDeltaIndex(I)V

    const-string p0, "inituimode"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetInitUiMode(I)V

    const-string p0, "description"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDescription(Ljava/lang/String;)V

    const-string p0, "isupdatereportingsession"

    invoke-static {p1, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetIsContinuousUpdateSession(Z)V

    const-string p0, "dmresultcode"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDmResultCode(Ljava/lang/String;)V

    const-string p0, "dltotalretrycount"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDlTotalRetryCount(I)V

    const-string p0, "dmtotalretrycount"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDmTotalRetryCount(I)V

    const-string p0, "dlcurrentretrycount"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetDlCurrentRetryCount(I)V

    const-string p0, "sucancel"

    invoke-static {p1, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetSuCancel(Z)V

    const-string p0, "fumostatus"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmSetFumoStatus(I)V

    return-object v0
.end method

.method public bridge synthetic createEntityFrom(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->createEntityFrom(Landroid/database/Cursor;)Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/service/actioninfo/IDMActionInfo;

    return-object p0
.end method

.method public getAllTaskIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    const-string v2, "sessionid"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v1, p0, v2, v4}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->execute()Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method

.method public getColumnNameForId()Ljava/lang/String;
    .locals 0

    const-string p0, "_id"

    return-object p0
.end method

.method public getDeltaIndex()I
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deltaindex"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDlCurrentRetryCount()I
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dlcurrentretrycount"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDlReportCode()I
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadReportCode"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDlTotalRetryCount()I
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dltotalretrycount"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDmResultCode()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dmresultcode"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadpath"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadType()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadType"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFumoStatus()I
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fumostatus"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string v0, "Fumo Status in DB = "

    invoke-static {v0, p0}, LB/f;->D(Ljava/lang/String;I)V

    return p0
.end method

.method public getInitType()I
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inittype"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string v0, "getInitType() : "

    invoke-static {v0, p0}, LB/f;->D(Ljava/lang/String;I)V

    return p0
.end method

.method public getIsContinuousUpdateSession()Z
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isupdatereportingsession"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetIsContinuousUpdateSession : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return p0
.end method

.method public getObjectSize()J
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectsize"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObjectUrl()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->securityAESCrypt:Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectUrl"

    invoke-virtual {p0, v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->securityAESCrypt:Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmDecryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPushUiMode()I
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pushuimode"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string v0, "getPushUiMode : "

    invoke-static {v0, p0}, LB/f;->D(Ljava/lang/String;I)V

    return p0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "serverId"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sessionid"

    invoke-direct {v0, p0, v3, v2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/dao/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/b;-><init>(I)V

    const-string v3, ""

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getValue(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSuCancel()Z
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sucancel"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 0

    const-string p0, "actioninfo"

    return-object p0
.end method

.method public getUiMode()I
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inituimode"

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string v0, "getUiMode : "

    invoke-static {v0, p0}, LB/f;->D(Ljava/lang/String;I)V

    return p0
.end method

.method public isDownloadFumoStatus()Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->DOWNLOAD_FUMO_STATUSES:[I

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isFumoStatusIn([I)Z

    move-result p0

    return p0
.end method

.method public isReportFumoStatus()Z
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->REPORT_FUMO_STATUSES:[I

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isFumoStatusIn([I)Z

    move-result p0

    return p0
.end method

.method public isTriggeredBySideload()Z
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getObjectUrl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "download via local file"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUpdatingFumoStatus()Z
    .locals 1

    const/16 v0, 0x3c

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isFumoStatusIn([I)Z

    move-result p0

    return p0
.end method

.method public setAppId(I)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public setCommand(I)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "command"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public setCorrelator(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "correlator"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDeltaIndex(I)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deltaindex"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDlCurrentRetryCount(I)V
    .locals 2

    const-string v0, "setDlCurrentRetryCount : "

    invoke-static {v0, p1}, LB/f;->D(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dlcurrentretrycount"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public setDlReportCode(I)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadReportCode"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public setDlTotalRetryCount(I)V
    .locals 2

    const-string v0, "setDlTotalRetryCount : "

    invoke-static {v0, p1}, LB/f;->D(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dltotalretrycount"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public setDmResultCode(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dmresultcode"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDmTotalRetryCount(I)V
    .locals 2

    const-string v0, "setDmTotalRetryCount : "

    invoke-static {v0, p1}, LB/f;->D(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dmtotalretrycount"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public setDownloadDescriptorUrl(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->securityAESCrypt:Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmEncryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "downloadDescriptorUrl"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadpath"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/DownloadPathSQLWriteFailException;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/DownloadPathSQLWriteFailException;-><init>()V

    throw p0
.end method

.method public setDownloadType(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadType"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFumoStatus(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "actionInfo is null - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetFumoStatus()I

    move-result v1

    if-ne v1, p1, :cond_1

    const-string p0, "Same fumoStatus. Do not save. - "

    invoke-static {p0, p1}, LB/f;->D(Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetSuCancel()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf0

    if-ne v1, v0, :cond_2

    if-eqz p1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SuCancel running. FumoStatus ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Do not save."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fumostatus"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;I)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "FumoStatus save ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public setInstallNotifyURI(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->securityAESCrypt:Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmEncryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "notifyurl"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIsContinuousUpdateSession(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isupdatereportingsession"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public setObjectSize(J)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectsize"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;J)I

    return-void
.end method

.method public setObjectUrl(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->securityAESCrypt:Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmEncryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "objectUrl"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setReportUrl(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportUrl"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSuCancel(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sucancel"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public setUiMode(I)V
    .locals 2

    const-string v0, "setUiMode : "

    invoke-static {v0, p1}, LB/f;->D(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inituimode"

    invoke-virtual {p0, v0, v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->update(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method
