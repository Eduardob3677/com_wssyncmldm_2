.class public interface abstract Lcom/idm/fotaagent/utils/BinaryStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getBinaryStatus()Lcom/idm/fotaagent/utils/BinaryStatus;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->getBinaryStatus()Lcom/idm/fotaagent/utils/BinaryStatus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isOfficial()Z
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/utils/BinaryStatus;->getBinaryStatus()Lcom/idm/fotaagent/utils/BinaryStatus;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;->OFFICIAL:Lcom/idm/fotaagent/utils/BinaryStatusByFlashLocked;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
