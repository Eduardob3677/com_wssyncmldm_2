.class public final LJ/X;
.super LW2/f;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;LU2/a;)V
    .locals 0

    iput-object p1, p0, LJ/X;->g:Landroid/view/View;

    invoke-direct {p0, p2}, LW2/f;-><init>(LU2/a;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr4/l;

    check-cast p2, LU2/a;

    invoke-virtual {p0, p1, p2}, LJ/X;->e(Ljava/lang/Object;LU2/a;)LU2/a;

    move-result-object p0

    check-cast p0, LJ/X;

    sget-object p1, LQ2/k;->a:LQ2/k;

    invoke-virtual {p0, p1}, LJ/X;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;LU2/a;)LU2/a;
    .locals 1

    new-instance v0, LJ/X;

    iget-object p0, p0, LJ/X;->g:Landroid/view/View;

    invoke-direct {v0, p0, p2}, LJ/X;-><init>(Landroid/view/View;LU2/a;)V

    iput-object p1, v0, LJ/X;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, LV2/a;->c:LV2/a;

    iget v1, p0, LJ/X;->e:I

    iget-object v2, p0, LJ/X;->g:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    sget-object v4, LQ2/k;->a:LQ2/k;

    const/4 v5, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, LJ/X;->f:Ljava/lang/Object;

    check-cast v1, Lr4/l;

    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    instance-of p1, v2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    new-instance p1, LJ/W;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, LJ/W;-><init>(Landroid/view/ViewGroup;LU2/a;)V

    iput-object v3, p0, LJ/X;->f:Ljava/lang/Object;

    iput v5, p0, LJ/X;->e:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lr4/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, p1, v2}, LZ0/j;->y(LU2/a;Lc3/c;Ljava/lang/Object;)LU2/a;

    move-result-object p1

    iput-object p1, v2, Lr4/l;->f:LU2/a;

    invoke-virtual {v2}, Lr4/l;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p0, v4

    goto :goto_0

    :cond_2
    iput-object v2, v1, Lr4/l;->e:Ljava/util/Iterator;

    iput v5, v1, Lr4/l;->c:I

    iput-object p0, v1, Lr4/l;->f:LU2/a;

    move-object p0, v0

    :goto_0
    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v4

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    iget-object p1, p0, LJ/X;->f:Ljava/lang/Object;

    check-cast p1, Lr4/l;

    iput-object p1, p0, LJ/X;->f:Ljava/lang/Object;

    iput v3, p0, LJ/X;->e:I

    iput-object v2, p1, Lr4/l;->d:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, p1, Lr4/l;->c:I

    iput-object p0, p1, Lr4/l;->f:LU2/a;

    return-object v0
.end method
