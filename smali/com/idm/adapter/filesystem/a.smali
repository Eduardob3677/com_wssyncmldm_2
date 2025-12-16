.class public final synthetic Lcom/idm/adapter/filesystem/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/adapter/filesystem/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/idm/adapter/filesystem/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->b(Ljava/lang/Integer;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterNetworkImpl;->c(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->b(Ljava/nio/file/Path;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->c(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;

    invoke-static {p1}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;->e(Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$InstallationStep;)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->b(Ljava/nio/file/Path;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
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
