.class public Lcom/idm/fotaagent/enabler/ui/checkingforupdate/CheckingForUpdateActivity;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithProgressCircle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithProgressCircle;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithProgressCircle;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
