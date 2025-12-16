.class public Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "Campaign"

.field public static final NAME_BACK:Ljava/lang/String; = "back"

.field public static final NAME_FRONT:Ljava/lang/String; = "front"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "Campaign"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->lambda$peek$2()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->lambda$isEmpty$5()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private back()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "back"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->lambda$peekAll$3()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->lambda$remove$1()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->lambda$size$4()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->lambda$add$0(Ljava/lang/String;)V

    return-void
.end method

.method private front()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "front"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private get(I)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private isEmpty()Z
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/database/room/data/repository/a;-><init>(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$add$0(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->back()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->back()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "back"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method

.method private synthetic lambda$isEmpty$5()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->front()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->back()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$peek$2()Ljava/util/Optional;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->front()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->get(I)Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$peekAll$3()Ljava/util/List;
    .locals 4

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->front()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->back()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->get(I)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private synthetic lambda$remove$1()Ljava/util/Optional;
    .locals 3

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->front()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "front"

    invoke-virtual {p0, v2, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->get(I)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$size$4()Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->back()I

    move-result v0

    invoke-direct {p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->front()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    new-instance v0, LA/o;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public peek()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/database/room/data/repository/a;-><init>(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public peekAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/database/room/data/repository/a;-><init>(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public remove()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/database/room/data/repository/a;-><init>(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public size()I
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/database/room/data/repository/a;-><init>(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;I)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
