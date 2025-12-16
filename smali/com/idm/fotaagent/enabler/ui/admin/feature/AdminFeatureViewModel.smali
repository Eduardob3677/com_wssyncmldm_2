.class public Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureViewModel;
.super Landroidx/lifecycle/Y;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/Y;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatureList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/Feature<",
            "*>;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/enabler/feature/Operator$MockOperator;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/feature/Operator$MockOperator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockServiceType;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockServiceType;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockDownloadType;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockDownloadType;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockUpdateType;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockUpdateType;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallType;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallType;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallPostponeType;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockInstallPostponeType;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyDevice;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyDevice;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyBearer;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature$MockWifiOnlyBearer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
