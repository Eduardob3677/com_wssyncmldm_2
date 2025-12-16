.class public final Lf4/m;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lf4/o;

.field public final synthetic f:Lf4/p;


# direct methods
.method public synthetic constructor <init>(Lf4/o;Lf4/p;I)V
    .locals 0

    iput p3, p0, Lf4/m;->d:I

    iput-object p1, p0, Lf4/m;->e:Lf4/o;

    iput-object p2, p0, Lf4/m;->f:Lf4/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf4/m;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lf4/m;->e:Lf4/o;

    iget-object v0, v0, Lf4/o;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lf4/m;->f:Lf4/p;

    invoke-virtual {p0}, Lf4/p;->p()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lf4/m;->e:Lf4/o;

    iget-object v0, v0, Lf4/o;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lf4/m;->f:Lf4/p;

    invoke-virtual {p0}, Lf4/p;->o()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, LR2/B;->S(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
