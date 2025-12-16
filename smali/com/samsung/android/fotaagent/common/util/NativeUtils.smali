.class public Lcom/samsung/android/fotaagent/common/util/NativeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "dprw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getKey()Ljava/lang/String;
.end method

.method public static native getRegiKey()Ljava/lang/String;
.end method

.method public static native getRegiValue()Ljava/lang/String;
.end method

.method public static native getTimeKey()Ljava/lang/String;
.end method

.method public static native getTimeValue()Ljava/lang/String;
.end method

.method public static native setPinAndFallocate(Ljava/lang/String;JJ)Z
.end method

.method public static native unscramble(Ljava/lang/String;Ljava/lang/String;)I
.end method
