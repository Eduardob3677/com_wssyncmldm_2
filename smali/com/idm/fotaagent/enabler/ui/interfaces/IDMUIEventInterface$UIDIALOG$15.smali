.class final enum Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG$15;
.super Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$1;)V

    return-void
.end method


# virtual methods
.method public getDialogModel(Lcom/idm/fotaagent/BundleWrapper;Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;
    .locals 2

    const p1, 0x7f130066

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->access$100(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getModifiedDeviceMessageId()I

    move-result v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->access$100(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$StubOk;

    invoke-virtual {p0, p2, v0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->getSmartSwitchSpannableString(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$StubOk;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 0

    const-string p0, "028"

    return-object p0
.end method
