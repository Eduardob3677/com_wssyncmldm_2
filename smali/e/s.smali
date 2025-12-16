.class public final Le/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Le/C;


# direct methods
.method public synthetic constructor <init>(Le/C;I)V
    .locals 0

    iput p2, p0, Le/s;->c:I

    iput-object p1, p0, Le/s;->d:Le/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Le/s;->d:Le/C;

    const/4 v2, 0x0

    iget v3, p0, Le/s;->c:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, v1, Le/C;->w:Landroid/widget/PopupWindow;

    iget-object v4, v1, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v5, 0x37

    invoke-virtual {v3, v4, v5, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v3, v1, Le/C;->y:LJ/a0;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LJ/a0;->b()V

    :cond_0
    iget-boolean v3, v1, Le/C;->z:Z

    if-eqz v3, :cond_1

    iget-object v3, v1, Le/C;->A:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    sget-object v4, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget-object v0, v1, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object v0

    invoke-virtual {v0, v3}, LJ/a0;->a(F)V

    iput-object v0, v1, Le/C;->y:LJ/a0;

    new-instance v1, Le/u;

    invoke-direct {v1, v2, p0}, Le/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, LJ/a0;->d(LJ/b0;)V

    goto :goto_1

    :cond_2
    iget-object p0, v1, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v1, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_0
    iget p0, v1, Le/C;->b0:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_3

    invoke-virtual {v1, v2}, Le/C;->w(I)V

    :cond_3
    iget p0, v1, Le/C;->b0:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_4

    const/16 p0, 0x6c

    invoke-virtual {v1, p0}, Le/C;->w(I)V

    :cond_4
    iput-boolean v2, v1, Le/C;->a0:Z

    iput v2, v1, Le/C;->b0:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
