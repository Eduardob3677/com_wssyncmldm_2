.class public abstract Ld3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    instance-of v0, p0, Le3/a;

    if-eqz v0, :cond_1

    instance-of v0, p0, Le3/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "kotlin.collections.MutableSet"

    invoke-static {v0, p0}, Ld3/t;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    check-cast p0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-class v0, Ld3/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ld3/i;->f(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lc3/c;)V
    .locals 2

    if-eqz p0, :cond_4

    instance-of v0, p0, Ld3/f;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ld3/f;

    invoke-interface {v0}, Ld3/f;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lc3/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lc3/b;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "kotlin.jvm.functions.Function2"

    invoke-static {v0, p0}, Ld3/t;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public static final c([Ljava/lang/Object;)LR2/a;
    .locals 1

    const-string v0, "array"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LR2/a;

    invoke-direct {v0, p0}, LR2/a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be cast to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const-class p0, Ld3/t;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ld3/i;->f(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p1
.end method
