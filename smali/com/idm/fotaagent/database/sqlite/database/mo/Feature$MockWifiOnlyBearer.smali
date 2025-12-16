.class public Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyBearer;
.super Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockWifiOnlyBearer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/database/sqlite/database/mo/Feature<",
        "Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;->values()[Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;

    move-result-object v2

    new-instance v3, Lcom/idm/fotaagent/database/sqlite/database/mo/a;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/a;-><init>(I)V

    new-instance v4, LG2/b;

    const/16 v0, 0xf

    invoke-direct {v4, v0}, LG2/b;-><init>(I)V

    new-instance v5, LA2/a;

    const/16 v0, 0xc

    invoke-direct {v5, v0}, LA2/a;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;-><init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    return-void
.end method
