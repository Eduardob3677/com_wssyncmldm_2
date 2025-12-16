.class public abstract Lo3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/D;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lu3/D;

    new-instance v1, Lq3/l;

    sget-object v2, Lj4/i;->a:Lj4/i;

    sget-object v2, Lj4/i;->b:Lj4/c;

    sget-object v3, Lo3/n;->e:LQ3/c;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lq3/l;-><init>(Lr3/x;LQ3/c;I)V

    sget-object v2, Lo3/n;->f:LQ3/c;

    invoke-virtual {v2}, LQ3/c;->f()LQ3/f;

    move-result-object v2

    sget-object v3, Lg4/l;->e:Lg4/b;

    invoke-direct {v0, v1, v2, v3}, Lu3/D;-><init>(Lq3/l;LQ3/f;Lg4/b;)V

    const/4 v1, 0x4

    iput v1, v0, Lu3/D;->l:I

    sget-object v1, Lr3/n;->e:LA3/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iput-object v1, v0, Lu3/D;->m:LA3/p;

    const-string v1, "T"

    invoke-static {v1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v5, v1, v4, v3}, Lu3/T;->T0(Lr3/j;ILQ3/f;ILg4/o;)Lu3/T;

    move-result-object v1

    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Lu3/D;->o:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lu3/D;->o:Ljava/util/ArrayList;

    new-instance v1, Lh4/j;

    iget-object v4, v0, Lu3/D;->p:Ljava/util/ArrayList;

    iget-object v5, v0, Lu3/D;->q:Lg4/o;

    invoke-direct {v1, v0, v3, v4, v5}, Lh4/j;-><init>(Lr3/e;Ljava/util/List;Ljava/util/Collection;Lg4/o;)V

    iput-object v1, v0, Lu3/D;->n:Lh4/j;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/s;

    check-cast v2, Lu3/k;

    invoke-virtual {v0}, Lu3/b;->q()Lh4/z;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu3/v;->a1(Lh4/z;)V

    goto :goto_0

    :cond_0
    sput-object v0, Lo3/o;->a:Lu3/D;

    return-void

    :cond_1
    const/16 v0, 0xd

    invoke-static {v0}, Lu3/D;->c0(I)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type parameters are already set for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lu3/b;->getName()LQ3/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/16 v0, 0x9

    invoke-static {v0}, Lu3/D;->c0(I)V

    throw v2
.end method
