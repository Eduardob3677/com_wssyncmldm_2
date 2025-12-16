.class public final Lk/f;
.super Lj/s;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lk/k;


# direct methods
.method public constructor <init>(Lk/k;Landroid/content/Context;Lj/A;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lk/f;->n:I

    iput-object p1, p0, Lk/f;->o:Lk/k;

    const/4 v7, 0x0

    const v2, 0x7f040022

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lj/s;-><init>(IILandroid/content/Context;Landroid/view/View;Lj/i;Z)V

    iget-object p2, p3, Lj/A;->A:Lj/k;

    invoke-virtual {p2}, Lj/k;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lk/k;->k:Lk/i;

    if-nez p2, :cond_0

    iget-object p2, p1, Lk/k;->j:Lj/w;

    check-cast p2, Landroid/view/View;

    :cond_0
    iput-object p2, p0, Lj/s;->f:Landroid/view/View;

    :cond_1
    iget-object p1, p1, Lk/k;->y:Lk/A;

    iput-object p1, p0, Lj/s;->i:Lj/t;

    iget-object p0, p0, Lj/s;->j:Lj/z;

    if-eqz p0, :cond_2

    iput-object p1, p0, Lj/z;->t:Lj/t;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lk/k;Landroid/content/Context;Lj/i;Lk/i;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Lk/f;->n:I

    iput-object p1, p0, Lk/f;->o:Lk/k;

    const/4 v3, 0x0

    const v2, 0x7f040022

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lj/s;-><init>(IILandroid/content/Context;Landroid/view/View;Lj/i;Z)V

    const p2, 0x800005

    iput p2, p0, Lj/s;->g:I

    iget-object p1, p1, Lk/k;->y:Lk/A;

    iput-object p1, p0, Lj/s;->i:Lj/t;

    iget-object p0, p0, Lj/s;->j:Lj/z;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lj/z;->t:Lj/t;

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Lk/f;->n:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk/f;->o:Lk/k;

    iget-object v1, v0, Lk/k;->e:Lj/i;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lj/i;->c(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lk/k;->u:Lk/f;

    invoke-super {p0}, Lj/s;->c()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lk/f;->o:Lk/k;

    iput-object v0, v1, Lk/k;->v:Lk/f;

    invoke-super {p0}, Lj/s;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
