.class Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl$1;->this$0:Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    iget-object v0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl$1;->this$0:Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;

    invoke-static {v0}, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;->access$000(Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl$1;->this$0:Lcom/wssyncmldm/databinding/AdminFeatureBindingImpl;

    iget-object p0, p0, Lcom/wssyncmldm/databinding/AdminFeatureBinding;->mFeature:Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;

    if-eqz p0, :cond_0

    iput v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/Feature;->selectedPosition:I

    :cond_0
    return-void
.end method
