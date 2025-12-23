.class Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

# MockDeviceFragment$1 - Dialog click listener for reset confirmation
#
# This anonymous inner class handles the "OK" button click in the reset confirmation dialog.
# When the user confirms the reset action, this listener calls the resetToDefaults() method
# on the parent MockDeviceFragment to restore all preferences to device default values.


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;


# direct methods
.method constructor <init>(Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment$1;->this$0:Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment$1;->this$0:Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;->access$000(Lcom/idm/fotaagent/enabler/ui/admin/mock/MockDeviceFragment;)V

    return-void
.end method
