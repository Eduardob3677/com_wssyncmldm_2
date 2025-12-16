.class public abstract Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyBearer;,
        Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyDevice;,
        Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallPostponeType;,
        Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallType;,
        Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockDownloadType;,
        Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockServiceType;,
        Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockUpdateType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_POSITION:I


# instance fields
.field public final candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deleter:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final getter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;",
            "Ljava/util/Optional<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private final mockCandidates:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field protected final repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

.field public selectedPosition:I

.field private final setter:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;",
            "-TT;>;",
            "Ljava/util/function/Function<",
            "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;",
            "Ljava/util/Optional<",
            "+TT;>;>;",
            "Ljava/util/function/Consumer<",
            "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    iput-object p3, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->setter:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getter:Ljava/util/function/Function;

    iput-object p5, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->deleter:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->mockCandidates:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->name:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->candidates:Ljava/util/List;

    const-string p3, "SELECT"

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_0

    aget-object p5, p2, p4

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->candidates:Ljava/util/List;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->candidates:Ljava/util/List;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getValue()Ljava/util/Optional;

    move-result-object p2

    new-instance p4, LG2/b;

    const/16 p5, 0x8

    invoke-direct {p4, p5}, LG2/b;-><init>(I)V

    invoke-virtual {p2, p4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    const-string p4, ""

    invoke-virtual {p2, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, p1

    :goto_1
    iput p3, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->getter:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public onItemSelected(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->setValueFrom(I)V

    return-void
.end method

.method public setValueFrom(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->deleter:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->setter:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->repository:Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->mockCandidates:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    invoke-interface {v0, v1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
