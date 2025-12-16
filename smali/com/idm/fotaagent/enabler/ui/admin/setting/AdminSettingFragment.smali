.class public Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingFragment;
.super Landroidx/preference/z;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$View;


# instance fields
.field private presenter:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/z;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/preference/z;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingPresenter;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$View;Landroid/content/Context;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingFragment;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/z;->getPreferenceManager()Landroidx/preference/F;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->m(Landroidx/preference/F;)V

    new-instance v0, Li/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    move-result-object v1

    const v3, 0x7f1401e1

    invoke-direct {v0, v1, v3}, Li/e;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingFragment;->presenter:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$Presenter;

    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v3}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$Presenter;->createProfilePreferenceUsing(Landroidx/preference/Preference;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->D(Landroidx/preference/Preference;)V

    invoke-virtual {p0, v2}, Landroidx/preference/z;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public setPresenter(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$Presenter;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingFragment;->presenter:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$Presenter;

    return-void
.end method
