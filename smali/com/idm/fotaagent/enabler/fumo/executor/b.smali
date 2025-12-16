.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/executor/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/b;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/b;->d:Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/b;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/b;->d:Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setDownloadType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setUpdateType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setInstallPostponeType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/MoFumoExtDao;->setInstallType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
