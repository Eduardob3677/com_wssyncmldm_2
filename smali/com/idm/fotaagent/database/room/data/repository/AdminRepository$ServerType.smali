.class public final enum Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

.field public static final enum PRODUCTION_SERVER:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

.field public static final enum STAGING_SERVER:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->PRODUCTION_SERVER:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    sget-object v1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->STAGING_SERVER:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    filled-new-array {v0, v1}, [Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    const/4 v1, 0x0

    const-string v2, "Production server"

    const-string v3, "PRODUCTION_SERVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->PRODUCTION_SERVER:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    const/4 v1, 0x1

    const-string v2, "Staging server"

    const-string v3, "STAGING_SERVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->STAGING_SERVER:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    invoke-static {}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->$values()[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->$VALUES:[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->$VALUES:[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$ServerType;->description:Ljava/lang/String;

    return-object p0
.end method
