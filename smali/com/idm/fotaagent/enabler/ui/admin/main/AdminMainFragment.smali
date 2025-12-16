.class public Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;
.super Landroidx/preference/z;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/z;-><init>()V

    return-void
.end method

.method private applyMethodToPreference(ILjava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/function/BiConsumer<",
            "Landroidx/preference/Preference;",
            "TU;>;TU;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;->findPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    invoke-interface {p2, p0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private disablePreferenceOf(I)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/a;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/a;-><init>(I)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;->applyMethodToPreference(ILjava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method private findPreference(I)Landroidx/preference/Preference;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "failed to get key for preference since context is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to find preference for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method private setOnPreferenceChangeListener(ILandroidx/preference/n;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/a;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;->applyMethodToPreference(ILjava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method private setOnPreferenceClickListenerFor(ILandroidx/preference/o;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/a;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;->applyMethodToPreference(ILjava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/high16 p1, 0x7f160000

    invoke-virtual {p0, p1, p2}, Landroidx/preference/z;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isUserShipBinary()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130111

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;->disablePreferenceOf(I)V

    :cond_0
    new-instance p1, Lx2/c;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lx2/c;-><init>(I)V

    const p2, 0x7f130112

    invoke-direct {p0, p2, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;->setOnPreferenceClickListenerFor(ILandroidx/preference/o;)V

    new-instance p1, Lx2/c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lx2/c;-><init>(I)V

    const p2, 0x7f1301f3

    invoke-direct {p0, p2, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;->setOnPreferenceClickListenerFor(ILandroidx/preference/o;)V

    new-instance p1, Lx2/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const p2, 0x7f1300fb

    invoke-direct {p0, p2, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;->setOnPreferenceChangeListener(ILandroidx/preference/n;)V

    new-instance p1, Lx2/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object p2

    invoke-direct {p1, p2}, Lx2/a;-><init>(Landroidx/fragment/app/G;)V

    const p2, 0x7f130110

    invoke-direct {p0, p2, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;->setOnPreferenceClickListenerFor(ILandroidx/preference/o;)V

    return-void
.end method
