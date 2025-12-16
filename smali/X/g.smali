.class public final LX/g;
.super Lf1/a;
.source "SourceFile"


# instance fields
.field public final f:LX/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX/f;

    invoke-direct {v0, p1}, LX/f;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, LX/g;->f:LX/f;

    return-void
.end method


# virtual methods
.method public final E([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/j;->j:Landroidx/emoji2/text/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, LX/g;->f:LX/f;

    invoke-virtual {p0, p1}, LX/f;->E([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public final Q()Z
    .locals 0

    iget-object p0, p0, LX/g;->f:LX/f;

    iget-boolean p0, p0, LX/f;->h:Z

    return p0
.end method

.method public final i0(Z)V
    .locals 2

    sget-object v0, Landroidx/emoji2/text/j;->j:Landroidx/emoji2/text/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, LX/g;->f:LX/f;

    invoke-virtual {p0, p1}, LX/f;->i0(Z)V

    return-void
.end method

.method public final j0(Z)V
    .locals 2

    sget-object v0, Landroidx/emoji2/text/j;->j:Landroidx/emoji2/text/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iget-object p0, p0, LX/g;->f:LX/f;

    if-eqz v0, :cond_1

    iput-boolean p1, p0, LX/f;->h:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, LX/f;->j0(Z)V

    :goto_1
    return-void
.end method

.method public final s0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/j;->j:Landroidx/emoji2/text/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, LX/g;->f:LX/f;

    invoke-virtual {p0, p1}, LX/f;->s0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p0

    return-object p0
.end method
