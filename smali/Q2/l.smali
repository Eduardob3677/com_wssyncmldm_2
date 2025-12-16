.class public final LQ2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ2/c;
.implements Ljava/io/Serializable;


# instance fields
.field public c:Lc3/a;

.field public d:Ljava/lang/Object;


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LQ2/l;->d:Ljava/lang/Object;

    sget-object v1, LQ2/j;->a:LQ2/j;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LQ2/l;->c:Lc3/a;

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LQ2/l;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, LQ2/l;->c:Lc3/a;

    :cond_0
    iget-object p0, p0, LQ2/l;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LQ2/l;->d:Ljava/lang/Object;

    sget-object v1, LQ2/j;->a:LQ2/j;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LQ2/l;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0
.end method
