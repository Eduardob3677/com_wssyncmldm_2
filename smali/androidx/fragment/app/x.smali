.class public final Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/x;->a:I

    iput-object p2, p0, Landroidx/fragment/app/x;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/activity/result/h;
    .locals 2

    iget v0, p0, Landroidx/fragment/app/x;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/fragment/app/x;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/result/h;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/x;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/L;

    instance-of v1, v0, Landroidx/activity/result/i;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/activity/result/i;

    invoke-interface {v0}, Landroidx/activity/result/i;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/G;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
