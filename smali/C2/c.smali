.class public final synthetic LC2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LC2/c;->c:I

    iput-object p2, p0, LC2/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LC2/c;->c:I

    iget-object p0, p0, LC2/c;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/List;

    check-cast p1, [B

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;

    check-cast p1, Ljava/lang/IllegalStateException;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;->a(Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/PeriodicHeartbeatHandle;Ljava/lang/IllegalStateException;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;->setContentValues(Landroid/content/ContentValues;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Validation;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Validation;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Validation;Ljava/lang/Enum;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Server;Ljava/lang/Enum;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Rooting;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Rooting;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Rooting;Ljava/lang/Enum;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Roaming;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Roaming;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Roaming;Ljava/lang/Enum;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->d(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;Ljava/lang/Enum;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Ioptest;Ljava/lang/Enum;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Deletememory;Ljava/lang/Enum;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Changessl;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Changessl;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Changessl;Ljava/lang/Enum;)V

    return-void

    :pswitch_a
    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setServiceType(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/ServiceType;)V

    return-void

    :pswitch_b
    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    check-cast p1, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$HistoryUpdater;->a(Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V

    return-void

    :pswitch_c
    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;->b(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    :pswitch_d
    check-cast p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->c(Lcom/idm/fotaagent/tool/ddf/DDFManager;Ljava/lang/String;)V

    return-void

    :pswitch_e
    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/idm/fotaagent/restapi/parser/XmlParser$Polling;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
