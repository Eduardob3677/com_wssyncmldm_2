.class public Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$Presenter;


# instance fields
.field private final model:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

.field private final view:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$View;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$View;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingPresenter;->view:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$View;

    invoke-interface {p1, p0}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$View;->setPresenter(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$Presenter;)V

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingPresenter;->model:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

    return-void
.end method


# virtual methods
.method public createProfilePreferenceUsing(Landroidx/preference/Preference;)Landroidx/preference/Preference;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingPresenter;->model:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingPresenter;->view:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingContractor$View;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LD1/b;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->createProfilePreferenceUsing(Landroidx/preference/Preference;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method
