.class public final synthetic LD1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LD1/b;->c:I

    iput-object p2, p0, LD1/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, LD1/b;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$View;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$View;->refresh()V

    return-void

    :pswitch_0
    const-string v0, "Checking..."

    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->a(Landroid/app/Application;)V

    return-void

    :pswitch_2
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/agent/restclient/RestRequestExecutor;

    invoke-static {p0}, Lcom/idm/agent/restclient/RestRequestExecutor;->a(Lcom/idm/agent/restclient/RestRequestExecutor;)V

    return-void

    :pswitch_3
    const/4 v0, 0x0

    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Ll2/c;

    invoke-virtual {p0, v0}, Ll2/c;->a(Z)V

    return-void

    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/Button;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x0

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {p0, v7}, LJ/y;->b(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, LJ/s;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v4}, LJ/s;-><init>(ILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    new-instance v6, LJ/s;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v4}, LJ/s;-><init>(ILandroid/graphics/Rect;)V

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int v8, v3, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v7, v8, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, LA3/D;

    invoke-direct {v3, p0}, LA3/D;-><init>(Landroid/widget/LinearLayout;)V

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v6, v1, p0, v7}, LJ/s;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)LJ/w;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v7, v3, LA3/D;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedList;

    new-instance v8, LJ/u;

    invoke-direct {v8, v2, v1}, LJ/u;-><init>(Landroid/view/View;LJ/w;)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v1, p0

    move v2, v4

    goto :goto_3

    :cond_5
    move-object p0, v3

    :goto_4
    if-eqz p0, :cond_6

    iget-object v0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LJ/t;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, LJ/t;-><init>(ILjava/lang/Object;)V

    new-instance v2, LA/o;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :pswitch_5
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;

    invoke-static {p0}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->a(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;)V

    return-void

    :pswitch_6
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;->b(Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;)V

    return-void

    :pswitch_7
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInProgress;->checkMemoryAndStartDownloading()V

    return-void

    :pswitch_8
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadDescriptor;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadDescriptor;->checkMemoryAndStartDownloading()V

    return-void

    :pswitch_9
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;

    invoke-interface {p0}, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;->deleteAll()I

    return-void

    :pswitch_a
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;->a(Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/TimeoutTask;)V

    return-void

    :pswitch_b
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;->b(Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$UpdateInProgress;)V

    return-void

    :pswitch_c
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;->b(Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadProgress;)V

    return-void

    :pswitch_d
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadDescriptor;

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadDescriptor;->b(Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadDescriptor;)V

    return-void

    :pswitch_e
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/InitExecutor;

    invoke-static {p0}, Lcom/idm/fotaagent/InitExecutor;->c(Lcom/idm/fotaagent/InitExecutor;)V

    return-void

    :pswitch_f
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/timepicker/e;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/e;->g()V

    return-void

    :pswitch_10
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/L;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Landroidx/lifecycle/L;->d:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/lifecycle/L;->h:Landroidx/lifecycle/y;

    if-nez v0, :cond_7

    iput-boolean v1, p0, Landroidx/lifecycle/L;->e:Z

    sget-object v0, Landroidx/lifecycle/p;->ON_PAUSE:Landroidx/lifecycle/p;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    :cond_7
    iget v0, p0, Landroidx/lifecycle/L;->c:I

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroidx/lifecycle/L;->e:Z

    if-eqz v0, :cond_8

    sget-object v0, Landroidx/lifecycle/p;->ON_STOP:Landroidx/lifecycle/p;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    iput-boolean v1, p0, Landroidx/lifecycle/L;->f:Z

    :cond_8
    return-void

    :pswitch_11
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/o;

    const-string v0, "fetchFonts result is not OK. ("

    iget-object v1, p0, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/emoji2/text/o;->h:Lf1/a;

    if-nez v2, :cond_9

    monitor-exit v1

    goto/16 :goto_a

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroidx/emoji2/text/o;->d()LG/i;

    move-result-object v1

    iget v2, v1, LG/i;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    iget-object v3, p0, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v3

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :cond_a
    :goto_5
    if-nez v2, :cond_d

    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/emoji2/text/o;->c:LP1/e;

    iget-object v2, p0, Landroidx/emoji2/text/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v1}, [LG/i;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, LB/h;->a(Landroid/content/Context;[LG/i;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, p0, Landroidx/emoji2/text/o;->a:Landroid/content/Context;

    iget-object v1, v1, LG/i;->a:Landroid/net/Uri;

    invoke-static {v2, v1}, LZ0/j;->V(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    :try_start_5
    const-string v2, "EmojiCompat.MetadataRepo.create"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v2, Lcom/google/firebase/messaging/p;

    invoke-static {v1}, Li3/x;->M0(Ljava/nio/MappedByteBuffer;)LW/b;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/messaging/p;-><init>(Landroid/graphics/Typeface;LW/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, p0, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v1, p0, Landroidx/emoji2/text/o;->h:Lf1/a;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v2}, Lf1/a;->a0(Lcom/google/firebase/messaging/p;)V

    goto :goto_6

    :catchall_3
    move-exception v1

    goto :goto_7

    :cond_b
    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {p0}, Landroidx/emoji2/text/o;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_a

    :goto_7
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_8
    iget-object v2, p0, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    iget-object v1, p0, Landroidx/emoji2/text/o;->h:Lf1/a;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Lf1/a;->Z(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_6
    move-exception p0

    goto :goto_b

    :cond_e
    :goto_9
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-virtual {p0}, Landroidx/emoji2/text/o;->b()V

    :goto_a
    return-void

    :goto_b
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw p0

    :goto_c
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw p0

    :pswitch_12
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/l;

    invoke-static {p0}, Landroidx/activity/l;->a(Landroidx/activity/l;)V

    return-void

    :pswitch_13
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/k;

    iget-object v0, p0, Landroidx/activity/k;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/k;->d:Ljava/lang/Runnable;

    :cond_f
    return-void

    :pswitch_14
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    return-void

    :pswitch_15
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_16
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, LS1/j;

    iget-object v0, p0, LS1/j;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, LS1/j;->t(Z)V

    iput-boolean v0, p0, LS1/j;->m:Z

    return-void

    :pswitch_17
    const/4 v0, 0x1

    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, LS1/d;

    invoke-virtual {p0, v0}, LS1/d;->t(Z)V

    return-void

    :pswitch_18
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, LB1/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, LB1/i;->c:Z

    iget-object v0, p0, LB1/i;->e:Lw/a;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:LS/d;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, LS/d;->f()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v0, p0, LB1/i;->b:I

    invoke-virtual {p0, v0}, LB1/i;->a(I)V

    goto :goto_d

    :cond_10
    iget v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    iget p0, p0, LB1/i;->b:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s(I)V

    :cond_11
    :goto_d
    return-void

    :pswitch_19
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, LQ0/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LA2/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LA2/b;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, LQ0/k;->d:LS0/c;

    check-cast p0, LR0/h;

    invoke-virtual {p0, v0}, LR0/h;->m(LS0/b;)Ljava/lang/Object;

    return-void

    :pswitch_1a
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_1b
    iget-object p0, p0, LD1/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->h0()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
