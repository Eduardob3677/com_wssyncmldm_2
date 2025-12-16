.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;
    }
.end annotation


# static fields
.field private static final REFRESH_STEP:J = 0x64L

.field private static final WRITE_SIZE:I = 0x100000


# instance fields
.field private final buf:[B

.field protected final context:Landroid/content/Context;

.field private copyingTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private currentPercent:I

.field protected final dstPath:Ljava/lang/String;

.field private final needsConfirm:Z

.field private progressDialog:Landroid/app/AlertDialog;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final srcPath:Ljava/lang/String;

.field protected final taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->currentPercent:I

    const/high16 v0, 0x100000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->buf:[B

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->srcPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->dstPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->taskId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->needsConfirm:Z

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->lambda$copyAndUpdate$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->onRefresh()V

    return-void
.end method

.method public static synthetic c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->lambda$start$0()V

    return-void
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->progressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->copyingTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private synthetic lambda$copyAndUpdate$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->startUpdate()V

    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->copyAndUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->clear()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "copy and update failed"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private declared-synchronized onRefresh()V
    .locals 4

    const-string v0, "/100"

    const-string v1, "Copying... "

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->progressDialog:Landroid/app/AlertDialog;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->currentPercent:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public copyAndUpdate()V
    .locals 12

    const-string v0, "Copy Failed"

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->srcPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->dstPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Copy a package from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->srcPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->dstPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->srcPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->dstPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    move-wide v8, v6

    :goto_0
    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-int v3, v8

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    :try_start_3
    iget-object v10, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->buf:[B

    invoke-virtual {v4, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v11, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->buf:[B

    invoke-virtual {v5, v11, v8, v10}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v10, v10

    add-long/2addr v6, v10

    if-nez v3, :cond_1

    const/16 v10, 0x64

    goto :goto_2

    :cond_1
    mul-int/lit8 v10, v9, 0x64

    div-int/2addr v10, v3

    :goto_2
    iput v10, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->currentPercent:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string v0, "copy success"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->clear()V

    :try_start_6
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->taskId:Ljava/lang/String;

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;->INSTALLABLE:Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;

    invoke-static {v0, v1}, Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;->createInstance(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;->check()V
    :try_end_6
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InsufficientMemoryException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getInstallHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->verifyPackage()V
    :try_end_7
    .catch Lcom/idm/fotaagent/enabler/fumo/exception/install/IDMFumoExceptionInstallFailed; {:try_start_7 .. :try_end_7} :catch_1

    iget-boolean v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->needsConfirm:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Start update\n"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;-><init>(ILjava/lang/Object;)V

    const p0, 0x7f130016

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->startUpdate()V

    :goto_3
    return-void

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;

    const-string v0, "FAIL_VERIFY"

    invoke-direct {p0, v0, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$1;)V

    throw p0

    :catch_2
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;

    const-string v0, "Memory full"

    invoke-direct {p0, v0, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$1;)V

    throw p0

    :catch_3
    move-exception p0

    goto :goto_9

    :catch_4
    move-exception p0

    goto :goto_a

    :catchall_1
    move-exception p0

    goto :goto_7

    :goto_4
    :try_start_8
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " filecopy fail"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;

    invoke-direct {p0, v0, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$1;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;

    const-string v1, "Source file does not exist!"

    invoke-direct {p0, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$1;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_7
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v1

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0
    :try_end_c
    .catch Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :goto_9
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;

    invoke-direct {p0, v0, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$1;)V

    throw p0

    :goto_a
    throw p0

    :cond_5
    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;

    const-string v0, "Empty Path"

    invoke-direct {p0, v0, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$UpdateTriggerFailureException;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger$1;)V

    throw p0
.end method

.method public declared-synchronized start()V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Copy a package"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Copying... 0/100"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "hide"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->progressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/a;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/a;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;I)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->copyingTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/a;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    const-string v1, "Start to update"

    invoke-static {v0, v1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->initializeUpdateResult()V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wssyncmldm/Flavor$LocalTest;->enableUpdateResultDialogIfUtAgent(Landroid/content/Context;)V

    const-string v0, "Phone will be reboot"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->dstPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    const-string v1, "Failed to trigger installation"

    invoke-static {v0, v1}, Lcom/idm/fotaagent/utils/ToastHelper;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/wssyncmldm/Flavor$LocalTest;->disableUpdateResultDialogIfUtAgent(Landroid/content/Context;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->deleteEnablerEntitiesAndResetFumoExtMo()V

    :goto_0
    return-void
.end method
