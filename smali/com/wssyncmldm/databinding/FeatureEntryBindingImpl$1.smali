.class Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$1;->this$0:Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    iget-object v0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$1;->this$0:Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;

    invoke-static {v0}, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;->access$000(Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$1;->this$0:Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;

    iget-object p0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBinding;->mFeatureEntry:Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;->getSelectedValueIndex()Landroidx/lifecycle/F;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
