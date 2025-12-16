.class public final synthetic Lz2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/o;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/b;->a:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

    iput-object p2, p0, Lz2/b;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lz2/b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lz2/b;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lz2/b;->c:Ljava/lang/Runnable;

    iget-object p0, p0, Lz2/b;->a:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

    invoke-static {p0, v0, v1, p1}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->b(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Ljava/lang/Runnable;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
