.class public Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;
.super Lcom/idm/fotaagent/enabler/network/NetworkChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/network/DMNetworkChecker$InstanceLazyHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/network/DMNetworkChecker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/network/DMNetworkChecker$InstanceLazyHolder;->access$100()Lcom/idm/fotaagent/enabler/network/DMNetworkChecker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlockedTypeOfWifiBackgroundPush(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0
.end method

.method public getBlockedTypeOfWifiOnlyForDl(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;->NO_BLOCKING:Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    return-object p0
.end method

.method public bridge synthetic getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/network/NetworkChecker;->getNetworkBlockedType(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/network/NetworkBlockedType;

    move-result-object p0

    return-object p0
.end method
