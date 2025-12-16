.class public abstract Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;
.super Landroidx/room/j;
.source "SourceFile"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "fota_debug_room"

.field private static volatile INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/j;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;
    .locals 4

    sget-object v0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;

    return-object p0

    :cond_0
    const-class v0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;

    if-eqz v1, :cond_1

    sget-object p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;

    const-string v2, "fota_debug_room"

    new-instance v3, Landroidx/room/h;

    invoke-direct {v3, p0, v1, v2}, Landroidx/room/h;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/room/h;->b()Landroidx/room/j;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;

    sput-object p0, Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/debug/repository/FotaDebugRoomDatabase;

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract postponeReasonDao()Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;
.end method
