.class public Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "DeviceRegistration"

.field private static final NAME_CHALLENGE:Ljava/lang/String; = "challenge"

.field private static final NAME_INITIAL_UPDATE:Ljava/lang/String; = "initialUpdate"

.field private static final NAME_REQUESTER:Ljava/lang/String; = "requester"

.field public static final NAME_STATE:Ljava/lang/String; = "state"

.field private static final VALUE_REQUESTER_BOOTCOMPLETE:I = 0x5

.field private static final VALUE_REQUESTER_DEVICEINIT:I = 0x2

.field private static final VALUE_REQUESTER_DM:I = 0x8

.field private static final VALUE_REQUESTER_FOTA_AGENT:I = 0x7

.field private static final VALUE_REQUESTER_MDM:I = 0x6

.field private static final VALUE_REQUESTER_NONE:I = 0x0

.field private static final VALUE_REQUESTER_SERVERINIT:I = 0x3

.field private static final VALUE_REQUESTER_SETUPWIZARD:I = 0x4

.field private static final VALUE_REQUESTER_USERINIT:I = 0x1

.field public static final VALUE_STATE_INVALID:I = 0x2

.field public static final VALUE_STATE_REGISTERED:I = 0x1

.field public static final VALUE_STATE_UNREGISTERED:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "DeviceRegistration"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->lambda$setRegister$0()V

    return-void
.end method

.method private getState()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$setRegister$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setState(I)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->clearChallenge()V

    return-void
.end method

.method private setRequesterAs(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "requester"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method private setState(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "state"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method


# virtual methods
.method public clearChallenge()V
    .locals 1

    const-string v0, "challenge"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public clearInitialUpdate()V
    .locals 1

    const-string v0, "initialUpdate"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    return-void
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 2

    const-string v0, "challenge"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRequester()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "requester"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isInitialUpdate()Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "initialUpdate"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isInvalid()Z
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRegistered()Z
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnregistered()Z
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "challenge"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setInitialUpdate(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "initialUpdate"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method public setInvalidRegister()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setState(I)V

    return-void
.end method

.method public setRegister()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/database/room/data/repository/c;-><init>(Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRequesterAs(Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)V
    .locals 0

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->getRequester()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setRequesterAs(I)V

    return-void
.end method

.method public setUnregister()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->setState(I)V

    return-void
.end method
