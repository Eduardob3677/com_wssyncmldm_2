.class public Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;
    }
.end annotation


# static fields
.field private static final DIGEST_BYTES:S = 0x10s


# instance fields
.field private final trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;


# direct methods
.method private constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rawData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/idm/fotaagent/utils/EnablerUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;-><init>([BILcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$1;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;-><init>([B)V

    return-object v0
.end method

.method public static decode([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public downloadType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$300(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->access$900(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;Ljava/lang/Class;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public initiator()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/Initiator;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$100(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;->access$600(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/Initiator;

    move-result-object p0

    return-object p0
.end method

.method public installPostponeType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$300(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->access$900(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;Ljava/lang/Class;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public installType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$300(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->access$900(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;Ljava/lang/Class;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public serverId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$100(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;->access$800(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public serviceType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$300(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->access$900(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;Ljava/lang/Class;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public sessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$100(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;->access$700(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uiMode()Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$300(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->access$400(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->WIFI_BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$300(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->access$400(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$100(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;->access$500(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    move-result-object p0

    return-object p0
.end method

.method public updateType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$300(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    invoke-static {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->access$900(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;Ljava/lang/Class;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->trigger:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->access$100(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;->access$200(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
