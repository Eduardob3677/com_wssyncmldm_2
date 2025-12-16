.class public final synthetic LA2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LA2/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    iget p0, p0, LA2/a;->c:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ld/c;

    invoke-virtual {p1}, Ld/c;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Ld/c;->e:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p1, Ld/c;->e:Z

    iget-object p0, p1, Ld/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p1, v1, v0

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Ld/c;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->b(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p1}, Lcom/idm/fotaagent/utils/RebootChecker;->a(Ljava/util/concurrent/ScheduledFuture;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/idm/fotaagent/restapi/restclient/heartbeat/handleintent/OneShotHeartbeatHandle;->a(Ljava/lang/IllegalStateException;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForSmartSwitchDescription;->a(Ljava/lang/String;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForMainDescription;->b(Ljava/lang/String;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForAppUpdateInformation;->b(Ljava/lang/String;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->sendScreenEntrance(Ljava/lang/String;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->k(Ljava/lang/String;)V

    return-void

    :pswitch_8
    check-cast p1, Landroid/view/WindowInsetsController;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->m(Landroid/view/WindowInsetsController;)V

    return-void

    :pswitch_9
    check-cast p1, Landroid/view/WindowInsetsController;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->l(Landroid/view/WindowInsetsController;)V

    return-void

    :pswitch_a
    check-cast p1, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;->c(Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V

    return-void

    :pswitch_b
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->deleteOperator()V

    return-void

    :pswitch_c
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->deleteWifiOnlyDevice()V

    return-void

    :pswitch_d
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->deleteWifiOnlyBearer()V

    return-void

    :pswitch_e
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->deleteUpdateType()V

    return-void

    :pswitch_f
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->deleteServiceType()V

    return-void

    :pswitch_10
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->deleteInstallType()V

    return-void

    :pswitch_11
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->deleteInstallPostponeType()V

    return-void

    :pswitch_12
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->deleteDownloadType()V

    return-void

    :pswitch_13
    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->c(Ljava/nio/file/Path;)V

    return-void

    :pswitch_14
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :pswitch_15
    check-cast p1, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/DownloadTask;->stopIfRunning()V

    return-void

    :pswitch_16
    check-cast p1, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->stopIfRunning()V

    return-void

    :pswitch_17
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :pswitch_18
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    :pswitch_19
    check-cast p1, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->i(Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
