.class public final synthetic LA/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LA/o;->c:I

    iput-object p1, p0, LA/o;->d:Ljava/lang/Object;

    iput-object p3, p0, LA/o;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, LA/o;->c:I

    packed-switch v4, :pswitch_data_0

    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/Preference;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lx2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LD1/b;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/Preference;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    iget-object v0, v0, Lx2/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/idm/fotaagent/utils/BinaryStatus;->getBinaryStatus()Lcom/idm/fotaagent/utils/BinaryStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, LA/o;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v3, v1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    sget v4, Landroidx/appcompat/widget/Toolbar;->f0:I

    iget-object v4, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, LJ/y;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-direct {v5, p0}, LJ/y;-><init>(Landroid/view/View;)V

    iget-object v6, v4, Landroidx/appcompat/widget/Toolbar;->f:Lk/w;

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/Toolbar;->v(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroidx/appcompat/widget/Toolbar;->f:Lk/w;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, v4, Landroidx/appcompat/widget/Toolbar;->f:Lk/w;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar;->f:Lk/w;

    invoke-static {v2, v6, v2, v7}, LJ/w;->a(IIII)LJ/w;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, LJ/y;->a(Landroid/view/View;LJ/w;)V

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v9, :cond_1

    move-object v1, v8

    goto :goto_3

    :cond_1
    add-int/2addr v7, v3

    goto :goto_2

    :cond_2
    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_4
    if-ge v7, v6, :cond_5

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    if-nez v7, :cond_3

    move v9, v4

    goto :goto_5

    :cond_3
    move v9, v2

    :goto_5
    invoke-static {v9, v4, v2, v4}, LJ/w;->a(IIII)LJ/w;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, LJ/y;->a(Landroid/view/View;LJ/w;)V

    move v4, v3

    :cond_4
    add-int/2addr v7, v3

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {p0, v5}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_6
    return-void

    :pswitch_2
    iget-object v1, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/profileinstaller/ProfileInstallerInitializer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lh0/i;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x3e8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    new-instance v3, Lcom/idm/fotaagent/analytics/diagmon/b;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v3, p0, v0}, Lcom/idm/fotaagent/analytics/diagmon/b;-><init>(Landroid/content/Context;I)V

    add-int/lit16 v2, v2, 0x1388

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_3
    iget-object v0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object p0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast p0, Le/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Le/I;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Le/I;->b()V

    throw v0

    :pswitch_4
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/restapi/restclient/RestClientReceiver;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/restapi/restclient/RestClientReceiver;->a(Lcom/idm/fotaagent/restapi/restclient/RestClientReceiver;Lcom/idm/fotaagent/restapi/restclient/RestClientServiceType;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallCountDown;->a(Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallConfirmContractor$View;Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsCallback;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->a(Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsCallback;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;->b(Lcom/idm/fotaagent/database/room/debug/repository/PostponeReasonsRepository;Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->a(Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;Ljava/util/HashMap;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->a(Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->a(Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;)V

    return-void

    :pswitch_b
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;->f(Lcom/idm/fotaagent/database/room/data/repository/CampaignQueueRepository;Ljava/lang/String;)V

    return-void

    :pswitch_c
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/agent/dl/DlAgent;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Lcom/idm/network/IDMNetworkHttpAdapter;

    invoke-static {v0, p0}, Lcom/idm/agent/dl/DlAgent;->a(Lcom/idm/agent/dl/DlAgent;Lcom/idm/network/IDMNetworkHttpAdapter;)V

    return-void

    :pswitch_d
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lb2/q;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Lk2/a;

    monitor-enter v0

    :try_start_2
    iget-object v1, v0, Lb2/q;->b:Ljava/util/Set;

    if-nez v1, :cond_7

    iget-object v1, v0, Lb2/q;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_7
    iget-object v1, v0, Lb2/q;->b:Ljava/util/Set;

    invoke-interface {p0}, Lk2/a;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0

    throw p0

    :pswitch_e
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lb2/r;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Lk2/a;

    iget-object v2, v0, Lb2/r;->b:Lk2/a;

    sget-object v3, Lb2/r;->d:Lb2/h;

    if-ne v2, v3, :cond_8

    monitor-enter v0

    :try_start_3
    iget-object v2, v0, Lb2/r;->a:LE2/a;

    iput-object v1, v0, Lb2/r;->a:LE2/a;

    iput-object p0, v0, Lb2/r;->b:Lk2/a;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_f
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->c:I

    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Landroid/app/job/JobParameters;

    invoke-virtual {v0, p0, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_10
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, LA3/D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LJ/y;

    iget-object v2, v0, LA3/D;->d:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-direct {v1, v2}, LJ/y;-><init>(Landroid/view/View;)V

    iget-object v0, v0, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LI/a;

    invoke-interface {v2, v1}, LI/a;->accept(Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, LI/a;

    invoke-interface {p0, v1}, LI/a;->accept(Ljava/lang/Object;)V

    sget p0, LJ/y;->c:I

    return-void

    :pswitch_11
    iget-object v0, p0, LA/o;->d:Ljava/lang/Object;

    check-cast v0, LA/b;

    iget-object p0, p0, LA/o;->e:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, LA/b;->i(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
