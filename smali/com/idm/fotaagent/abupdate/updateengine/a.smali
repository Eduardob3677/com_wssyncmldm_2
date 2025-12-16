.class public final synthetic Lcom/idm/fotaagent/abupdate/updateengine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/abupdate/updateengine/a;->a:I

    iput p1, p0, Lcom/idm/fotaagent/abupdate/updateengine/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/a;->a:I

    iget p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/a;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/idm/fotaagent/utils/storage/StorageType;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/storage/StorageType;->a(ILcom/idm/fotaagent/utils/storage/StorageType;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->a(ILcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;->a(ILcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository$Requester;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->b(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->d(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->a(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;->a(ILcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$EngineStatus;)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->a(ILcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
