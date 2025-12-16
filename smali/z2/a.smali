.class public final synthetic Lz2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/a;->c:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

    iput-object p2, p0, Lz2/a;->d:Ljava/util/ArrayList;

    iput-object p3, p0, Lz2/a;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lz2/a;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lz2/a;->e:Ljava/lang/Runnable;

    iget-object p0, p0, Lz2/a;->c:Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->a(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
