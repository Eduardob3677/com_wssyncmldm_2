.class public abstract LR3/q;
.super LR3/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static g(LR3/n;LR3/q;ILR3/Q;Ljava/lang/Class;)LR3/p;
    .locals 7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v6, LR3/p;

    new-instance v4, LR3/o;

    const/4 v0, 0x1

    invoke-direct {v4, p2, p3, v0}, LR3/o;-><init>(ILR3/T;Z)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LR3/p;-><init>(LR3/n;Ljava/lang/Object;LR3/q;LR3/o;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static h(LR3/n;Ljava/io/Serializable;LR3/q;ILR3/T;Ljava/lang/Class;)LR3/p;
    .locals 7

    new-instance v6, LR3/p;

    new-instance v4, LR3/o;

    const/4 v0, 0x0

    invoke-direct {v4, p3, p4, v0}, LR3/o;-><init>(ILR3/T;Z)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LR3/p;-><init>(LR3/n;Ljava/lang/Object;LR3/q;LR3/o;Ljava/lang/Class;)V

    return-object v6
.end method
