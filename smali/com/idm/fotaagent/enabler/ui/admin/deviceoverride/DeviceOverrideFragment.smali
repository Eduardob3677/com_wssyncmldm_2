.class public Lcom/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideFragment;
.super Landroidx/preference/z;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/z;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p1, "DeviceOverrideFragment created"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/String;)V

    const p1, 0x7f160004

    invoke-virtual {p0, p1, p2}, Landroidx/preference/z;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method
