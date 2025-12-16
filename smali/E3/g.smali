.class public final LE3/g;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LE3/j;


# direct methods
.method public synthetic constructor <init>(LE3/j;I)V
    .locals 0

    iput p2, p0, LE3/g;->d:I

    iput-object p1, p0, LE3/g;->e:LE3/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LE3/g;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LE3/g;->e:LE3/j;

    invoke-static {p0}, LX3/f;->f(Lr3/g;)LQ3/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LE3/j;->j:LD3/e;

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->w:LJ3/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LE3/g;->e:LE3/j;

    iget-object v0, p0, LE3/j;->k:Lx3/o;

    invoke-virtual {v0}, Lx3/o;->u()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx3/C;

    iget-object v3, p0, LE3/j;->m:LD3/e;

    iget-object v3, v3, LD3/e;->e:Ljava/lang/Object;

    check-cast v3, LD3/g;

    invoke-interface {v3, v2}, LD3/g;->a(Lx3/C;)Lr3/Q;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Parameter "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surely belongs to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LE3/j;->k:Lx3/o;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", so it must be resolved"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-object v1

    :pswitch_1
    iget-object p0, p0, LE3/g;->e:LE3/j;

    invoke-static {p0}, Lp0/a;->f(Lr3/h;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
