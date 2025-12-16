.class final enum Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$2;
.super Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$1;)V

    return-void
.end method


# virtual methods
.method public isRetriable(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/utils/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Auto download option is OFF and WIFI. Retriable"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$2;->skipShowConfirm(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public skipShowConfirm(Landroid/content/Context;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "Auto download option is OFF and charge. No skip"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/idm/fotaagent/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Auto download option is OFF and No charge. return mobileNetwork : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return p0
.end method
