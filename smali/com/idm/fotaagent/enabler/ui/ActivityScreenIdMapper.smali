.class public Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper;->lambda$getScreenIdFrom$0(Landroid/app/Activity;Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper;->lambda$getScreenIdFrom$1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenIdFrom(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->values()[Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/enabler/ui/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$getScreenIdFrom$0(Landroid/app/Activity;Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;)Z
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->access$100(Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getScreenIdFrom$1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->access$000(Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
