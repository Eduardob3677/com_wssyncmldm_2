.class public final LJ/W;
.super LW2/f;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# instance fields
.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/view/View;

.field public g:I

.field public h:I

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;LU2/a;)V
    .locals 0

    iput-object p1, p0, LJ/W;->k:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, LW2/f;-><init>(LU2/a;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr4/l;

    check-cast p2, LU2/a;

    invoke-virtual {p0, p1, p2}, LJ/W;->e(Ljava/lang/Object;LU2/a;)LU2/a;

    move-result-object p0

    check-cast p0, LJ/W;

    sget-object p1, LQ2/k;->a:LQ2/k;

    invoke-virtual {p0, p1}, LJ/W;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;LU2/a;)LU2/a;
    .locals 1

    new-instance v0, LJ/W;

    iget-object p0, p0, LJ/W;->k:Landroid/view/ViewGroup;

    invoke-direct {v0, p0, p2}, LJ/W;-><init>(Landroid/view/ViewGroup;LU2/a;)V

    iput-object p1, v0, LJ/W;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, LV2/a;->c:LV2/a;

    iget v1, p0, LJ/W;->i:I

    sget-object v2, LQ2/k;->a:LQ2/k;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    const/4 v4, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    iget v1, p0, LJ/W;->h:I

    iget v4, p0, LJ/W;->g:I

    iget-object v5, p0, LJ/W;->e:Landroid/view/ViewGroup;

    iget-object v6, p0, LJ/W;->j:Ljava/lang/Object;

    check-cast v6, Lr4/l;

    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, LJ/W;->h:I

    iget v5, p0, LJ/W;->g:I

    iget-object v6, p0, LJ/W;->f:Landroid/view/View;

    iget-object v7, p0, LJ/W;->e:Landroid/view/ViewGroup;

    iget-object v8, p0, LJ/W;->j:Ljava/lang/Object;

    check-cast v8, Lr4/l;

    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    instance-of p1, v6, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    check-cast v6, Landroid/view/ViewGroup;

    new-instance p1, LJ/W;

    const/4 v9, 0x0

    invoke-direct {p1, v6, v9}, LJ/W;-><init>(Landroid/view/ViewGroup;LU2/a;)V

    iput-object v8, p0, LJ/W;->j:Ljava/lang/Object;

    iput-object v7, p0, LJ/W;->e:Landroid/view/ViewGroup;

    iput-object v9, p0, LJ/W;->f:Landroid/view/View;

    iput v5, p0, LJ/W;->g:I

    iput v1, p0, LJ/W;->h:I

    iput v4, p0, LJ/W;->i:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lr4/l;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v6, p1, v6}, LZ0/j;->y(LU2/a;Lc3/c;Ljava/lang/Object;)LU2/a;

    move-result-object p1

    iput-object p1, v6, Lr4/l;->f:LU2/a;

    invoke-virtual {v6}, Lr4/l;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, v2

    goto :goto_0

    :cond_2
    iput-object v6, v8, Lr4/l;->e:Ljava/util/Iterator;

    iput v4, v8, Lr4/l;->c:I

    iput-object p0, v8, Lr4/l;->f:LU2/a;

    move-object p1, v0

    :goto_0
    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move v4, v5

    move-object v5, v7

    move-object v6, v8

    :goto_2
    move-object v7, v5

    move-object v8, v6

    move v5, v4

    :cond_5
    add-int/2addr v5, v3

    goto :goto_3

    :cond_6
    invoke-static {p1}, Li3/x;->g1(Ljava/lang/Object;)V

    iget-object p1, p0, LJ/W;->j:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Lr4/l;

    iget-object v7, p0, LJ/W;->k:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object v8, p0, LJ/W;->j:Ljava/lang/Object;

    iput-object v7, p0, LJ/W;->e:Landroid/view/ViewGroup;

    iput-object p1, p0, LJ/W;->f:Landroid/view/View;

    iput v5, p0, LJ/W;->g:I

    iput v1, p0, LJ/W;->h:I

    iput v3, p0, LJ/W;->i:I

    iput-object p1, v8, Lr4/l;->d:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, v8, Lr4/l;->c:I

    iput-object p0, v8, Lr4/l;->f:LU2/a;

    return-object v0

    :cond_7
    return-object v2
.end method
