.class public Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "DmNotification"

.field private static final NAME_SESSION_ID:Ljava/lang/String; = "sessionId"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "DmNotification"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->lambda$save$0(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->lambda$insertOrReplaceWithoutException$1(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;)V

    return-void
.end method

.method private getValueOf(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private insertOrReplaceWithoutException(Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "+",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/d;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/d;-><init>(Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$insertOrReplaceWithoutException$1(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method private synthetic lambda$save$0(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->sessionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sessionId"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->installType()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->insertOrReplaceWithoutException(Ljava/util/Optional;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->installPostponeType()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->insertOrReplaceWithoutException(Ljava/util/Optional;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->updateType()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->insertOrReplaceWithoutException(Ljava/util/Optional;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->serviceType()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->insertOrReplaceWithoutException(Ljava/util/Optional;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;->downloadType()Ljava/util/Optional;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->insertOrReplaceWithoutException(Ljava/util/Optional;)V

    return-void
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

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->getValueOf(Ljava/lang/Class;)Ljava/util/Optional;

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

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->getValueOf(Ljava/lang/Class;)Ljava/util/Optional;

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

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->getValueOf(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public save(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;)V
    .locals 2

    new-instance v0, LA/o;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
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

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->getValueOf(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public sessionId()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "sessionId"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

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

    const-class v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->getValueOf(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
