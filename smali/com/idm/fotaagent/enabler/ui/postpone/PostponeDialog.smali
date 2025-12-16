.class public Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;
.super Landroidx/fragment/app/r;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_HOUR_OF_DAY:I = 0x2

.field private static final DEFAULT_MINUTE:I = 0x0

.field private static final NO_ANCHOR:I = -0x1

.field private static final TASK_ID_KEY:Ljava/lang/String; = "taskId"

.field private static final VIEW_ID_TO_ANCHOR_KEY:Ljava/lang/String; = "viewIdToAnchor"


# instance fields
.field private presenter:Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$Presenter;

.field private refreshListener:Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    return-void
.end method

.method public static synthetic g(Lf0/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->lambda$onCreateDialog$1(Lf0/b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lf0/b;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->lambda$onCreateDialog$2(Lf0/b;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic i(Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->lambda$onDismiss$3(Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->lambda$onCreateDialog$0(Landroidx/picker/widget/SeslTimePicker;II)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "hourOfDay: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", minute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$Presenter;

    invoke-interface {p0, p2, p3}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$Presenter;->postponeByTimePicker(II)V

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$1(Lf0/b;Landroid/view/View;)V
    .locals 0

    const/4 p1, -0x1

    invoke-virtual {p0, p0, p1}, Lf0/b;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$2(Lf0/b;Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Le/k;->d(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, LA2/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LA2/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic lambda$onDismiss$3(Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;->refresh()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->newInstance(Ljava/lang/String;I)Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "taskId"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "viewIdToAnchor"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setAnchorView(Landroid/app/Dialog;)V
    .locals 3

    const-string v0, "getWindows() should not be null"

    :try_start_0
    const-string v1, "getDialog() should not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "getArgument() should not be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "viewIdToAnchor"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object p0

    const-string v2, "getActivity() should not be null"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "anchorView should not be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/view/Window;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to apply semSetAnchor(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->allowsToFinish(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/r;->onAttach(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->refreshListener:Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/r;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/postpone/PostponePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "taskId"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponePresenter;-><init>(Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$View;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$Presenter;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->scheduledInstallTime()J

    move-result-wide v0

    new-instance p1, Ljava/util/Calendar$Builder;

    invoke-direct {p1}, Ljava/util/Calendar$Builder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->isAlreadyScheduled()Z

    move-result v1

    new-instance v8, Lf0/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object v3

    new-instance v4, LA2/b;

    const/4 v2, 0x0

    invoke-direct {v4, v2, p0}, LA2/b;-><init>(ILjava/lang/Object;)V

    if-eqz v1, :cond_0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    move v6, p1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lf0/b;-><init>(Landroidx/fragment/app/G;LA2/b;IIZ)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$Presenter;

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$Presenter;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Le/k;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->presenter:Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$Presenter;

    invoke-interface {p1}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeContractor$Presenter;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v8, Le/k;->h:Le/i;

    iput-object p1, v0, Le/i;->f:Ljava/lang/CharSequence;

    iget-object v1, v0, Le/i;->B:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const p1, 0x7f130010

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, v8}, Le/i;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f13000d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, v8}, Le/i;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, LA2/c;

    invoke-direct {p1, v8}, LA2/c;-><init>(Lf0/b;)V

    invoke-virtual {v8, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :try_start_0
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    invoke-direct {p0, v8}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->setAnchorView(Landroid/app/Dialog;)V

    return-object v8
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/r;->dismissAllowingStateLoss()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    const-string v1, "ReschedulePostponeDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->refreshListener:Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog$RefreshListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LA2/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LA2/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/r;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
