.class public final LZ0/e;
.super LZ0/f;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static final c:LZ0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LZ0/e;->b:Ljava/lang/Object;

    new-instance v0, LZ0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LZ0/e;->c:LZ0/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, LZ0/f;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;I)I
    .locals 0

    invoke-super {p0, p1, p2}, LZ0/f;->b(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public final c(Landroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 5

    const-string v0, "d"

    invoke-super {p0, p1, p2, v0}, LZ0/f;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    new-instance v0, Lc1/v;

    invoke-direct {v0, p0, p1}, Lc1/v;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    const/4 p0, 0x0

    if-nez p2, :cond_0

    move-object p2, p0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1, p2}, Lc1/i;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eq p2, v4, :cond_6

    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_4

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const v3, 0x7f1300fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const v3, 0x7f130106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    const v3, 0x7f1300ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    invoke-static {p1, p2}, Lc1/i;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_8
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    :goto_2
    if-nez p2, :cond_9

    return-void

    :cond_9
    instance-of v0, p1, Landroidx/fragment/app/G;

    const-string v1, "GooglePlayServicesErrorDialog"

    if-eqz v0, :cond_b

    check-cast p1, Landroidx/fragment/app/G;

    invoke-virtual {p1}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p1

    new-instance v0, LZ0/i;

    invoke-direct {v0}, LZ0/i;-><init>()V

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p2, v0, LZ0/i;->c:Landroid/app/Dialog;

    if-eqz p3, :cond_a

    iput-object p3, v0, LZ0/i;->d:Landroid/content/DialogInterface$OnCancelListener;

    :cond_a
    invoke-virtual {v0, p1, v1}, LZ0/i;->show(Landroidx/fragment/app/Z;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    new-instance v0, LZ0/b;

    invoke-direct {v0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, LZ0/b;->c:Landroid/app/Dialog;

    iput-object v2, v0, LZ0/b;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p2, v0, LZ0/b;->c:Landroid/app/Dialog;

    if-eqz p3, :cond_c

    iput-object p3, v0, LZ0/b;->d:Landroid/content/DialogInterface$OnCancelListener;

    :cond_c
    invoke-virtual {v0, p1, v1}, LZ0/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final d(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 8

    const/16 v0, 0x12

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    new-instance p2, LZ0/d;

    invoke-direct {p2, p0, p1}, LZ0/d;-><init>(LZ0/e;Landroid/content/Context;)V

    const-wide/32 p0, 0x1d4c0

    invoke-virtual {p2, v1, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 p0, 0x6

    if-nez p3, :cond_2

    if-ne p2, p0, :cond_1

    const-string p0, "GoogleApiAvailability"

    const-string p1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne p2, p0, :cond_3

    const-string v0, "common_google_play_services_resolution_required_title"

    invoke-static {p1, v0}, Lc1/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lc1/i;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v2, 0x7f130103

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eq p2, p0, :cond_6

    const/16 p0, 0x13

    if-ne p2, p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1, p2}, Lc1/i;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {p1}, Lc1/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "common_google_play_services_resolution_required_text"

    invoke-static {p1, v3, p0}, Lc1/i;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    new-instance v5, Ly/p;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Ly/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v1, v5, Ly/p;->m:Z

    iget-object v6, v5, Ly/p;->s:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    invoke-static {v0}, Ly/p;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Ly/p;->e:Ljava/lang/CharSequence;

    new-instance v0, Ly/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ly/p;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Ly/n;->d:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ly/p;->c(LK3/c;)V

    sget-object v0, Lh1/a;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.type.watch"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lh1/a;->b:Ljava/lang/Boolean;

    :cond_7
    sget-object v0, Lh1/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v6, 0x2

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    iget-object v0, v5, Ly/p;->s:Landroid/app/Notification;

    iput p0, v0, Landroid/app/Notification;->icon:I

    iput v6, v5, Ly/p;->j:I

    invoke-static {p1}, Lh1/a;->d(Landroid/content/Context;)V

    iput-object p3, v5, Ly/p;->g:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_8
    iget-object v0, v5, Ly/p;->s:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v0, Landroid/app/Notification;->icon:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v5, Ly/p;->s:Landroid/app/Notification;

    invoke-static {v0}, Ly/p;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v5, Ly/p;->s:Landroid/app/Notification;

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iput-object p3, v5, Ly/p;->g:Landroid/app/PendingIntent;

    invoke-static {p0}, Ly/p;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v5, Ly/p;->f:Ljava/lang/CharSequence;

    :goto_3
    sget-object p0, LZ0/e;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "com.google.android.gms.availability"

    invoke-virtual {v4, p0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f130102

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_9

    new-instance p3, Landroid/app/NotificationChannel;

    const/4 v0, 0x4

    invoke-direct {p3, p0, p1, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v4, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p3, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_a
    :goto_4
    iput-object p0, v5, Ly/p;->q:Ljava/lang/String;

    invoke-virtual {v5}, Ly/p;->a()Landroid/app/Notification;

    move-result-object p0

    if-eq p2, v1, :cond_b

    if-eq p2, v6, :cond_b

    const/4 p1, 0x3

    if-eq p2, p1, :cond_b

    const p1, 0x9b6d

    goto :goto_5

    :cond_b
    sget-object p1, LZ0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p1, 0x28c4

    :goto_5
    invoke-virtual {v4, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
