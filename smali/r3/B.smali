.class public final Lr3/B;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/firebase/messaging/p;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/p;I)V
    .locals 0

    iput p2, p0, Lr3/B;->d:I

    iput-object p1, p0, Lr3/B;->e:Lcom/google/firebase/messaging/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lr3/B;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LQ3/c;

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lq3/l;

    iget-object p0, p0, Lr3/B;->e:Lcom/google/firebase/messaging/p;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p0, Lr3/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lq3/l;-><init>(Lr3/x;LQ3/c;I)V

    return-object v0

    :pswitch_0
    check-cast p1, Lr3/z;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lr3/z;->a:LQ3/b;

    iget-boolean v1, v0, LQ3/b;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, LQ3/b;->g()LQ3/b;

    move-result-object v1

    iget-object p0, p0, Lr3/B;->e:Lcom/google/firebase/messaging/p;

    iget-object p1, p1, Lr3/z;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-static {p1}, LR2/m;->I0(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/messaging/p;->v(LQ3/b;Ljava/util/List;)Lr3/e;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v1, Lg4/e;

    invoke-virtual {v0}, LQ3/b;->h()LQ3/c;

    move-result-object v2

    const-string v3, "classId.packageFqName"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/f;

    goto :goto_0

    :goto_1
    iget-object v1, v0, LQ3/b;->b:LQ3/c;

    invoke-virtual {v1}, LQ3/c;->e()LQ3/c;

    move-result-object v1

    invoke-virtual {v1}, LQ3/c;->d()Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v1, Lr3/A;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lg4/o;

    invoke-virtual {v0}, LQ3/b;->j()LQ3/f;

    move-result-object v5

    const-string p0, "classId.shortClassName"

    invoke-static {p0, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LR2/m;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_2
    move v7, p0

    goto :goto_3

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :goto_3
    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lr3/A;-><init>(Lg4/o;Lr3/f;LQ3/f;ZI)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unresolved local class: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
