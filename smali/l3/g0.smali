.class public final Ll3/g0;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/h0;


# direct methods
.method public synthetic constructor <init>(Ll3/h0;I)V
    .locals 0

    iput p2, p0, Ll3/g0;->d:I

    iput-object p1, p0, Ll3/g0;->e:Ll3/h0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ll3/g0;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ll3/g0;->e:Ll3/h0;

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object v0

    invoke-virtual {v0}, Ll3/j0;->p()Lr3/K;

    move-result-object v0

    invoke-interface {v0}, Lr3/K;->f()Lu3/M;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ll3/d0;->p()Ll3/j0;

    move-result-object p0

    invoke-virtual {p0}, Ll3/j0;->p()Lr3/K;

    move-result-object p0

    sget-object v0, Ls3/g;->a:Ls3/f;

    invoke-static {p0, v0}, LZ0/j;->A(Lr3/K;Ls3/h;)Lu3/M;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_0
    iget-object p0, p0, Ll3/g0;->e:Ll3/h0;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll3/r0;->c(Ll3/d0;Z)Lm3/e;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
