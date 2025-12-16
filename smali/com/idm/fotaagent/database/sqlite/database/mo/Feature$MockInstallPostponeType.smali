.class public Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallPostponeType;
.super Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockInstallPostponeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/database/sqlite/database/mo/Feature<",
        "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LG2/b;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LG2/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/mo/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    new-instance v4, Lcom/idm/fotaagent/database/sqlite/database/mo/a;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/a;-><init>(I)V

    new-instance v5, LG2/b;

    const/16 v0, 0xb

    invoke-direct {v5, v0}, LG2/b;-><init>(I)V

    new-instance v6, LA2/a;

    const/16 v0, 0x8

    invoke-direct {v6, v0}, LA2/a;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;-><init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(I)[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallPostponeType;->lambda$new$0(I)[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
    .locals 0

    new-array p0, p0, [Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    return-object p0
.end method
