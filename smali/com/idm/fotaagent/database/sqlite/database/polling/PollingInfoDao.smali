.class Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->INSTANCE:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private existsRow()Z
    .locals 8

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseInterface;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "polling"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0
.end method

.method public static get()Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->INSTANCE:Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;

    return-object v0
.end method

.method private get(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->existsRow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->insertDefaultValues()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "polling"

    sget-object v3, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingDatabaseInterface;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private insertDefaultValues()V
    .locals 3

    const-string v0, "insert default values"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "https://fota-cloud-dn.ospserver.net/firmware/"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "day"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "periodUnit"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "period"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "range"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "polling"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private set(Landroid/content/ContentValues;)V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->existsRow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->insertDefaultValues()V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "polling"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPeriod()I
    .locals 1

    const-string v0, "period"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/idm/fotaagent/utils/GeneralUtils;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPeriodUnit()Ljava/lang/String;
    .locals 1

    const-string v0, "periodUnit"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PeriodUnit is empty, return default unit"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const-string p0, "day"

    :cond_0
    return-object p0
.end method

.method public getRange()I
    .locals 1

    const-string v0, "range"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/idm/fotaagent/utils/GeneralUtils;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTime()I
    .locals 1

    const-string v0, "time"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/idm/fotaagent/utils/GeneralUtils;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "url is empty, return default url"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const-string p0, "https://fota-cloud-dn.ospserver.net/firmware/"

    :cond_0
    return-object p0
.end method

.method public setPollingPeriodInfo(Ljava/lang/String;III)V
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "periodUnit"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "period"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "time"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "range"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->set(Landroid/content/ContentValues;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "url"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/polling/PollingInfoDao;->set(Landroid/content/ContentValues;)V

    return-void
.end method
