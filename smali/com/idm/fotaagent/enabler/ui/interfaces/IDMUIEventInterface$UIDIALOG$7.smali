.class final enum Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG$7;
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
    .locals 0

    const p0, 0x7f13001f

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->access$100(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->get(Landroid/content/Context;)Lcom/idm/fotaagent/utils/battery/BatteryChecker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->getBatteryLevelToUpdate()I

    move-result p1

    const p2, 0x7f130033

    invoke-static {p2}, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->access$100(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$StubOk;

    invoke-direct {p2, p0, p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$StubOk;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 0

    const-string p0, "033"

    return-object p0
.end method
