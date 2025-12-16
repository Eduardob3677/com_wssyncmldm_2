.class public Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;
.super Landroidx/preference/z;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$View;


# instance fields
.field private devicePref:Landroidx/preference/Preference;

.field private localtestPref:Landroidx/preference/Preference;

.field private presenter:Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$Presenter;

.field private updatePref:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/z;-><init>()V

    return-void
.end method


# virtual methods
.method public idmSetDevicePreferenceSummary(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;->devicePref:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->z(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public idmSetPresenter(Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$Presenter;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;->presenter:Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$Presenter;

    return-void
.end method

.method public idmSetUpdatePreferenceClickListener(Landroidx/preference/o;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;->updatePref:Landroidx/preference/Preference;

    iput-object p1, p0, Landroidx/preference/Preference;->h:Landroidx/preference/o;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const p1, 0x7f160003

    invoke-virtual {p0, p1, p2}, Landroidx/preference/z;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "UpdateUTSoftware"

    invoke-virtual {p0, p1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;->updatePref:Landroidx/preference/Preference;

    const-string p1, "showDeviceId"

    invoke-virtual {p0, p1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;->devicePref:Landroidx/preference/Preference;

    const-string p1, "localtest"

    invoke-virtual {p0, p1}, Landroidx/preference/z;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;->localtestPref:Landroidx/preference/Preference;

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;->presenter:Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentContract$Presenter;->idmStart()V

    return-void
.end method

.method public setLocaltestPreferenceClickListener(Landroidx/preference/o;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/utagent/IDMUTAgentFragment;->localtestPref:Landroidx/preference/Preference;

    iput-object p1, p0, Landroidx/preference/Preference;->h:Landroidx/preference/o;

    return-void
.end method
