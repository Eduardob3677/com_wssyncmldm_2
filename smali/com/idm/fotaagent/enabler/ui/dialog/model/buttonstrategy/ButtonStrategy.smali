.class public interface abstract Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$WifiSettingNegative;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$WifiSettingPositive;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNeutral;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubOk;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;
    }
.end annotation


# static fields
.field public static final NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;


# direct methods
.method public static showWiFiSettings()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public abstract getId()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract onClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
.end method
