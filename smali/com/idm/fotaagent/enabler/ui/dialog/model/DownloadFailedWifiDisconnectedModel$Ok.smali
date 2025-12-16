.class Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadFailedWifiDisconnectedModel$Ok;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadFailedWifiDisconnectedModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ok"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const v0, 0x7f130016

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadFailedWifiDisconnectedModel$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/DownloadFailedWifiDisconnectedModel$Ok;-><init>()V

    return-void
.end method
