.class public final Lp3/f;
.super La4/h;
.source "SourceFile"


# virtual methods
.method public final h()Ljava/util/List;
    .locals 2

    iget-object p0, p0, La4/h;->b:Lr3/e;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.builtins.functions.FunctionClassDescriptor"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lp3/c;

    iget-object v0, p0, Lp3/c;->i:Lp3/e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lo3/f;->d(Lp3/c;Z)Lp3/g;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo3/f;->d(Lp3/c;Z)Lp3/g;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
