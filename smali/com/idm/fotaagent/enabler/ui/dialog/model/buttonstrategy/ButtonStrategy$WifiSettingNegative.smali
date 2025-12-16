.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$WifiSettingNegative;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSettingNegative"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f13001c

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doOnClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;->doOnClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;->showWiFiSettings()V

    return-void
.end method
