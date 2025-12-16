.class public Lcom/idm/fotaagent/utils/ToastHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p2, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f1401f6

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/idm/fotaagent/utils/ToastHelper;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/idm/fotaagent/utils/ToastHelper;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/idm/fotaagent/utils/a;

    invoke-direct {v1, p0, p2, p1}, Lcom/idm/fotaagent/utils/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
