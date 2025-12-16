.class public final Lr3/E;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LQ3/c;


# direct methods
.method public synthetic constructor <init>(LQ3/c;I)V
    .locals 0

    iput p2, p0, Lr3/E;->d:I

    iput-object p1, p0, Lr3/E;->e:LQ3/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr3/E;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ls3/h;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lr3/E;->e:LQ3/c;

    invoke-interface {p1, p0}, Ls3/h;->f(LQ3/c;)Ls3/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LQ3/c;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, LQ3/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LQ3/c;->e()LQ3/c;

    move-result-object p1

    iget-object p0, p0, Lr3/E;->e:LQ3/c;

    invoke-static {p1, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
