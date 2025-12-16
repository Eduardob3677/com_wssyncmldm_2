.class public final synthetic LG2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LG2/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LG2/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/app/job/JobInfo;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->b(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/app/job/JobScheduler;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmModel;->a(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/app/job/JobInfo;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->b(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/app/job/JobScheduler;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->a(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->b(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyBearer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/network/WifiOnlyChecker;->a(Lcom/idm/fotaagent/database/room/data/repository/AdminRepository$WifiOnlyDevice;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {p1}, Landroid/app/admin/SystemUpdatePolicy;->getPolicyType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {p1}, Landroid/app/admin/SystemUpdatePolicy;->getInstallWindowEnd()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {p1}, Landroid/app/admin/SystemUpdatePolicy;->getFreezePeriods()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {p1}, Landroid/app/admin/SystemUpdatePolicy;->getInstallWindowStart()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getOperator()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getWifiOnlyDevice()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getWifiOnlyBearer()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getUpdateType()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getServiceType()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getInstallType()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getInstallPostponeType()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->getDownloadType()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :pswitch_16
    new-instance p0, Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->getStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;

    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->a(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)Lcom/idm/fotaagent/utils/rangerequest/HttpRangeRequest;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/idm/core/ddf/DDFTag;

    invoke-virtual {p1}, Lcom/idm/core/ddf/DDFTag;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/idm/providers/mo/IDMMoNodeInfo;

    invoke-virtual {p1}, Lcom/idm/providers/mo/IDMMoNodeInfo;->idmMoNodeGetValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
