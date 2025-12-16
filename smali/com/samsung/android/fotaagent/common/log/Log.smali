.class public Lcom/samsung/android/fotaagent/common/log/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fotaagent/common/log/Log$Default;,
        Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;,
        Lcom/samsung/android/fotaagent/common/log/Log$FatalException;,
        Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;,
        Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_DEPTH_IN_CALL_STACK:I = 0x1

.field static final ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

.field private static DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger; = null

.field public static final LOG_DIRECTORY:Ljava/lang/String; = "file_log"

.field public static final TAG_NAME:Ljava/lang/String; = "IDM_FOTA"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IDM_FOTA"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/fotaagent/common/log/AndroidLogger;->of(Ljava/lang/String;I)Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->ANDROID_LOGGER:Lcom/samsung/android/fotaagent/common/log/AndroidLogger;

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger;->STUB:Lcom/samsung/android/fotaagent/common/log/Logger;

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->D(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public static E(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->E(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public static H(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public static I(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->I(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public static V(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->V(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public static W(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->W(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public static bootstrapLogger(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Logger;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;->get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;

    move-result-object p0

    return-object p0
.end method

.method public static defaultLogger(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Logger;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log$Default;->get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$Default;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    return-object p0
.end method

.method public static downloadDescriptorLogger(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Logger;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static fatalExceptionLogger(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Logger;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log$FatalException;->get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$FatalException;

    move-result-object p0

    return-object p0
.end method

.method public static forceFileLogger(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log$Default;->get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$Default;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;->forceFileLogger()V

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;->get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;->forceFileLogger()V

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log$FatalException;->get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$FatalException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;->forceFileLogger()V

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/log/Log$DownloadDescriptor;->forceFileLogger()V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log;->DEFAULT_LOGGER:Lcom/samsung/android/fotaagent/common/log/Logger;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static switchFileLoggerToSession(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log$Default;->get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$Default;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/log/Log$Default;->switchFileLoggerToSession()V

    return-void
.end method
