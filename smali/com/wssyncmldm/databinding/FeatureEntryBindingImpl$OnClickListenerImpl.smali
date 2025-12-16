.class public Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl"
.end annotation


# instance fields
.field private value:Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;->value:Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;->toggleDescriptionVisibility(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;)Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;
    .locals 0

    iput-object p1, p0, Lcom/wssyncmldm/databinding/FeatureEntryBindingImpl$OnClickListenerImpl;->value:Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
