.class public final enum Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/network/DLNetworkChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfirmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

.field public static final enum DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

.field public static final enum DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    sget-object v1, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    filled-new-array {v0, v1}, [Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    const-string v1, "DOWNLOAD_CONFIRM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->DOWNLOAD_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    new-instance v0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    const-string v1, "DOWNLOAD_RETRY_CONFIRM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->DOWNLOAD_RETRY_CONFIRM:Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->$values()[Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->$VALUES:[Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->$VALUES:[Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/network/DLNetworkChecker$ConfirmType;

    return-object v0
.end method
