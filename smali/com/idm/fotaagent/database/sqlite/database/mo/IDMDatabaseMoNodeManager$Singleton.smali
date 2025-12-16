.class Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager$1;)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager$Singleton;->instance:Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager$Singleton;->instance:Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    return-object v0
.end method
