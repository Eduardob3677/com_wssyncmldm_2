.class public final Lu3/d;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lf4/t;


# direct methods
.method public synthetic constructor <init>(Lf4/t;I)V
    .locals 0

    iput p2, p0, Lu3/d;->d:I

    iput-object p1, p0, Lu3/d;->e:Lf4/t;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lu3/d;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lh4/Z;

    const-string v0, "type"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lh4/c;->i(Lh4/v;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object p1

    invoke-interface {p1}, Lh4/J;->i()Lr3/g;

    move-result-object p1

    instance-of v0, p1, Lr3/Q;

    if-eqz v0, :cond_0

    check-cast p1, Lr3/Q;

    invoke-interface {p1}, Lr3/j;->l()Lr3/j;

    move-result-object p1

    iget-object p0, p0, Lu3/d;->e:Lf4/t;

    invoke-static {p1, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Li4/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "descriptor"

    iget-object p0, p0, Lu3/d;->e:Lf4/t;

    invoke-static {p1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
