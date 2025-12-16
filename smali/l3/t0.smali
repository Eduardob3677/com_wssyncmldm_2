.class public abstract Ll3/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LS3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LS3/g;->c:LS3/g;

    sput-object v0, Ll3/t0;->a:LS3/g;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lr3/b;)V
    .locals 4

    invoke-static {p1}, Ll3/w0;->g(Lr3/b;)Lu3/w;

    move-result-object v0

    invoke-interface {p1}, Lr3/b;->d0()Lu3/w;

    move-result-object p1

    const-string v1, "."

    const-string v2, "receiver.type"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu3/w;->e()Lh4/v;

    move-result-object v3

    invoke-static {v2, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Ll3/t0;->d(Lh4/v;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v3, "("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lu3/w;->e()Lh4/v;

    move-result-object p1

    invoke-static {v2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Ll3/t0;->d(Lh4/v;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method public static b(Lr3/s;)Ljava/lang/String;
    .locals 7

    const-string v0, "descriptor"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Ll3/t0;->a(Ljava/lang/StringBuilder;Lr3/b;)V

    move-object v1, p0

    check-cast v1, Lu3/o;

    invoke-virtual {v1}, Lu3/o;->getName()LQ3/f;

    move-result-object v1

    const-string v2, "descriptor.name"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    sget-object v3, Ll3/t0;->a:LS3/g;

    invoke-virtual {v3, v1, v2}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v1

    const-string v2, "descriptor.valueParameters"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Ll3/b;->k:Ll3/b;

    const-string v3, "("

    const-string v4, ")"

    const/16 v6, 0x30

    move-object v2, v0

    invoke-static/range {v1 .. v6}, LR2/m;->R0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Lc3/b;I)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lr3/b;->n()Lh4/v;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Ll3/t0;->d(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static c(Lr3/K;)Ljava/lang/String;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lr3/U;->T()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "var "

    goto :goto_0

    :cond_0
    const-string v1, "val "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Ll3/t0;->a(Ljava/lang/StringBuilder;Lr3/b;)V

    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object v1

    const-string v2, "descriptor.name"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    sget-object v3, Ll3/t0;->a:LS3/g;

    invoke-virtual {v3, v1, v2}, LS3/g;->O(LQ3/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lr3/T;->e()Lh4/v;

    move-result-object p0

    const-string v1, "descriptor.type"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Ll3/t0;->d(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static d(Lh4/v;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ll3/t0;->a:LS3/g;

    invoke-virtual {v0, p0}, LS3/g;->Y(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
