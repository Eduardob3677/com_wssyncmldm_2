.class public final Landroidx/preference/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/preference/t;->c:I

    iput-object p2, p0, Landroidx/preference/t;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/preference/t;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/preference/t;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/D;

    invoke-virtual {p0}, Landroidx/preference/D;->p()V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/preference/t;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/d;

    invoke-virtual {p0}, Landroidx/preference/d;->k()V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/preference/t;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/z;

    iget-object p0, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
