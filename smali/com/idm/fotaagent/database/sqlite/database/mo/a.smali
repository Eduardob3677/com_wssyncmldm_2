.class public final synthetic Lcom/idm/fotaagent/database/sqlite/database/mo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/preference/Preference;

    check-cast p2, Landroidx/preference/n;

    iput-object p2, p1, Landroidx/preference/Preference;->g:Landroidx/preference/n;

    return-void

    :pswitch_0
    check-cast p1, Landroidx/preference/Preference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-boolean p2, p1, Landroidx/preference/Preference;->r:Z

    if-eq p2, p0, :cond_0

    iput-boolean p0, p1, Landroidx/preference/Preference;->r:Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->A()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->k(Z)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->j()V

    :cond_0
    return-void

    :pswitch_1
    check-cast p1, Landroidx/preference/Preference;

    check-cast p2, Landroidx/preference/o;

    iput-object p2, p1, Landroidx/preference/Preference;->h:Landroidx/preference/o;

    return-void

    :pswitch_2
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p2, Lcom/idm/fotaagent/enabler/feature/Operator;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setOperator(Lcom/idm/fotaagent/enabler/feature/Operator;)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p2, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setWifiOnlyDevice(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;)V

    return-void

    :pswitch_4
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p2, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setWifiOnlyBearer(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;)V

    return-void

    :pswitch_5
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setUpdateType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UpdateType;)V

    return-void

    :pswitch_6
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setServiceType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;)V

    return-void

    :pswitch_7
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setInstallType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallType;)V

    return-void

    :pswitch_8
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setInstallPostponeType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;)V

    return-void

    :pswitch_9
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    check-cast p2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;

    invoke-virtual {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setDownloadType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/DownloadType;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
