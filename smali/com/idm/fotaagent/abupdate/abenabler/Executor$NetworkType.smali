.class final enum Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

.field public static final enum MOBILE:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

.field public static final enum WIFI:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->WIFI:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    sget-object v1, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->MOBILE:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    filled-new-array {v0, v1}, [Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->WIFI:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    const-string v1, "MOBILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->MOBILE:Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->$values()[Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->$VALUES:[Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->$VALUES:[Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/abupdate/abenabler/Executor$NetworkType;

    return-object v0
.end method
