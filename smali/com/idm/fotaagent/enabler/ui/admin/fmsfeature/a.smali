.class public final synthetic Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/G;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/a;->a:I

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/a;->a:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;->a(Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionViewModel$FeatureEntry;Ljava/lang/Integer;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/wssyncmldm/databinding/FeatureEntryBinding;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/fmsfeature/FeatureInjectionActivity$FeatureAttributeAdapter;->a(Lcom/wssyncmldm/databinding/FeatureEntryBinding;Ljava/lang/Integer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
