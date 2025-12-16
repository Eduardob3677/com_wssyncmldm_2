.class public final Lm3/m;
.super Lm3/o;
.source "SourceFile"

# interfaces
.implements Lm3/d;


# virtual methods
.method public final i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lm3/o;->a([Ljava/lang/Object;)V

    iget-object p0, p0, Lm3/t;->a:Ljava/lang/reflect/Member;

    check-cast p0, Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-static {p1}, LR2/i;->t0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method
