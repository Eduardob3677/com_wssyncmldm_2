.class public Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;
.super Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/database/sqlite/database/dao/Dao<",
        "Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDM_DB_SCHEDULEINFO:Ljava/lang/String; = "scheduleinfo"

.field public static final IDM_DB_SCHEDULEINFO_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS scheduleinfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,type INTEGER,data BLOB);"

.field static final IDM_DB_SCHEDULEINFO_DATA:Ljava/lang/String; = "data"

.field static final IDM_DB_SCHEDULEINFO_ID:Ljava/lang/String; = "_id"

.field static final IDM_DB_SCHEDULEINFO_TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;-><init>()V

    return-void
.end method


# virtual methods
.method public createContValuesFrom(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Landroid/content/ContentValues;
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "type"

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetSchedulerInitType()Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "data"

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bridge synthetic createContValuesFrom(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    check-cast p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;->createContValuesFrom(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public createEntityFrom(Landroid/database/Cursor;)Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;
    .locals 6

    const-string v0, "fail to get schedulerInfo -> delete the row(rowId: "

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-wide/16 v2, -0x1

    :try_start_0
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "data"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    array-length v4, p1

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;

    invoke-virtual {p1, v2, v3}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmSetIndex(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") at DB: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->deleteEntity(J)I

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public bridge synthetic createEntityFrom(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ScheduleInfoDao;->createEntityFrom(Landroid/database/Cursor;)Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNameForId()Ljava/lang/String;
    .locals 0

    const-string p0, "_id"

    return-object p0
.end method

.method public getFirstEntity()Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    const-string v1, "data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-direct {v0, p0, v2, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;-><init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "_id asc"

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;->orderBy(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->getEntity(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Query;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;

    return-object p0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 0

    const-string p0, "_id desc"

    return-object p0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 0

    const-string p0, "scheduleinfo"

    return-object p0
.end method
