.class public abstract Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;
.super Landroidx/room/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PreferenceSettingPopulation;,
        Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PolicySettingPopulation;,
        Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$BaseInfoPopulation;,
        Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$DeviceRegistrationPopulation;
    }
.end annotation


# static fields
.field private static DATABASE_NAME:Ljava/lang/String; = "fota_room"

.field private static volatile INSTANCE:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

.field static final MIGRATION_6_7:Lv0/a;

.field static final MIGRATION_7_8:Lv0/a;

.field static final MIGRATION_8_9:Lv0/a;

.field static final MIGRATION_9_10:Lv0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PreferenceSettingPopulation$ByMigration;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PreferenceSettingPopulation$ByMigration;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->MIGRATION_6_7:Lv0/a;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PolicySettingPopulation$ByMigration;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$PolicySettingPopulation$ByMigration;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->MIGRATION_7_8:Lv0/a;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$BaseInfoPopulation$ByMigration;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$BaseInfoPopulation$ByMigration;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->MIGRATION_8_9:Lv0/a;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$DeviceRegistrationPopulation$ByMigration;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase$DeviceRegistrationPopulation$ByMigration;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->MIGRATION_9_10:Lv0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/j;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;
    .locals 5

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    return-object p0

    :cond_0
    const-class v0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    if-eqz v1, :cond_1

    sget-object p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    sget-object v2, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->DATABASE_NAME:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroidx/room/h;

    invoke-direct {v3, p0, v1, v2}, Landroidx/room/h;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, v3, Landroidx/room/h;->f:Z

    sget-object p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->MIGRATION_6_7:Lv0/a;

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->MIGRATION_7_8:Lv0/a;

    sget-object v2, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->MIGRATION_8_9:Lv0/a;

    sget-object v4, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->MIGRATION_9_10:Lv0/a;

    filled-new-array {p0, v1, v2, v4}, [Lv0/a;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/room/h;->a([Lv0/a;)V

    invoke-virtual {v3}, Landroidx/room/h;->b()Landroidx/room/j;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    sput-object p0, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->INSTANCE:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    monitor-exit v0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract injectedFeatureDao()Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao;
.end method

.method public abstract propertyDao()Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;
.end method
