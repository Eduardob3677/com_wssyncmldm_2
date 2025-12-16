.class public final LB1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/t;


# instance fields
.field public final synthetic c:I

.field public d:Z

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LB1/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB1/c;->c:I

    iput-object p2, p0, LB1/c;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LH/f;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LB1/c;->c:I

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, LB1/c;-><init>(ILjava/lang/Object;)V

    iput-boolean p2, p0, LB1/c;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    iput p3, p0, LB1/c;->c:I

    iput-object p1, p0, LB1/c;->e:Ljava/lang/Object;

    iput-boolean p2, p0, LB1/c;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj/i;Z)V
    .locals 2

    iget-boolean p2, p0, LB1/c;->d:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, LB1/c;->d:Z

    iget-object p2, p0, LB1/c;->e:Ljava/lang/Object;

    check-cast p2, Le/L;

    iget-object v0, p2, Le/L;->a:Lk/I1;

    iget-object v0, v0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lk/k;->i()Z

    iget-object v0, v0, Lk/k;->v:Lk/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj/s;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lj/s;->j:Lj/z;

    invoke-virtual {v0}, Lj/z;->dismiss()V

    :cond_1
    iget-object p2, p2, Le/L;->b:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LB1/c;->d:Z

    return-void
.end method

.method public b(Lj/i;)Z
    .locals 1

    iget-object p0, p0, LB1/c;->e:Ljava/lang/Object;

    check-cast p0, Le/L;

    iget-object p0, p0, Le/L;->b:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, LB1/c;->d:Z

    return p0
.end method

.method public d(Ljava/lang/CharSequence;I)Z
    .locals 1

    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    if-ltz v0, :cond_3

    iget-object v0, p0, LB1/c;->e:Ljava/lang/Object;

    check-cast v0, LH/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LB1/c;->c()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0, p1, p2}, LH/f;->a(Ljava/lang/CharSequence;I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, LB1/c;->c()Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LB1/c;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, LB1/c;->d:Z

    if-eqz v0, :cond_0

    const-string p0, "FALL_THROUGH"

    goto :goto_0

    :cond_0
    iget-object p0, p0, LB1/c;->e:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
