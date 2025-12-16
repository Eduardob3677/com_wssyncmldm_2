.class public final LL3/l;
.super LR3/n;
.source "SourceFile"


# static fields
.field public static final k:LL3/l;

.field public static final l:LL3/a;


# instance fields
.field public final d:LR3/e;

.field public e:I

.field public f:I

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:B

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LL3/l;->l:LL3/a;

    new-instance v0, LL3/l;

    invoke-direct {v0}, LL3/l;-><init>()V

    sput-object v0, LL3/l;->k:LL3/l;

    const/4 v1, 0x6

    iput v1, v0, LL3/l;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/l;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LL3/l;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/l;->i:B

    iput v0, p0, LL3/l;->j:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LL3/l;->d:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 10

    invoke-direct {p0}, LR3/n;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/l;->i:B

    iput v0, p0, LL3/l;->j:I

    const/4 v0, 0x6

    iput v0, p0, LL3/l;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL3/l;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL3/l;->h:Ljava/util/List;

    new-instance v0, LR3/d;

    invoke-direct {v0}, LR3/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x4

    if-nez v3, :cond_c

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x8

    if-eq v7, v8, :cond_9

    const/16 v8, 0x12

    if-eq v7, v8, :cond_7

    const/16 v8, 0xf8

    if-eq v7, v8, :cond_5

    const/16 v8, 0xfa

    if-eq v7, v8, :cond_2

    invoke-virtual {p0, p1, v2, p2, v7}, LR3/n;->o(LR3/f;LB1/j;LR3/i;I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v7

    invoke-virtual {p1, v7}, LR3/f;->d(I)I

    move-result v7

    and-int/lit8 v8, v4, 0x4

    if-eq v8, v6, :cond_3

    invoke-virtual {p1}, LR3/f;->b()I

    move-result v8

    if-lez v8, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, LL3/l;->h:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    :cond_3
    :goto_1
    invoke-virtual {p1}, LR3/f;->b()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, p0, LL3/l;->h:Ljava/util/List;

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v7}, LR3/f;->c(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v7, v4, 0x4

    if-eq v7, v6, :cond_6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, LL3/l;->h:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    :cond_6
    iget-object v7, p0, LL3/l;->h:Ljava/util/List;

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    and-int/lit8 v7, v4, 0x2

    if-eq v7, v5, :cond_8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, LL3/l;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    :cond_8
    iget-object v7, p0, LL3/l;->g:Ljava/util/List;

    sget-object v8, LL3/Z;->o:LL3/a;

    invoke-virtual {p1, v8, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    iget v7, p0, LL3/l;->e:I

    or-int/2addr v7, v1

    iput v7, p0, LL3/l;->e:I

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v7

    iput v7, p0, LL3/l;->f:I
    :try_end_0
    .catch LR3/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :try_start_1
    new-instance p2, LR3/u;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, LR3/u;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, LR3/u;->c:LR3/b;

    throw p2

    :goto_3
    iput-object p0, p1, LR3/u;->c:LR3/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_a

    iget-object p2, p0, LL3/l;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/l;->g:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v6, :cond_b

    iget-object p2, p0, LL3/l;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LL3/l;->h:Ljava/util/List;

    :cond_b
    :try_start_2
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/l;->d:LR3/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/l;->d:LR3/e;

    throw p1

    :goto_5
    invoke-virtual {p0}, LR3/n;->m()V

    throw p1

    :cond_c
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_d

    iget-object p1, p0, LL3/l;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/l;->g:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v6, :cond_e

    iget-object p1, p0, LL3/l;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LL3/l;->h:Ljava/util/List;

    :cond_e
    :try_start_3
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LL3/l;->d:LR3/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LL3/l;->d:LR3/e;

    throw p1

    :goto_6
    invoke-virtual {p0}, LR3/n;->m()V

    return-void
.end method

.method public constructor <init>(LR3/l;)V
    .locals 1

    invoke-direct {p0, p1}, LR3/n;-><init>(LR3/l;)V

    const/4 v0, -0x1

    iput-byte v0, p0, LL3/l;->i:B

    iput v0, p0, LL3/l;->j:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LL3/l;->d:LR3/e;

    return-void
.end method


# virtual methods
.method public final a()LR3/b;
    .locals 0

    sget-object p0, LL3/l;->k:LL3/l;

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-byte v0, p0, LL3/l;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, LL3/l;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, LL3/l;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL3/Z;

    invoke-virtual {v3}, LL3/Z;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, LL3/l;->i:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LR3/n;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, LL3/l;->i:B

    return v2

    :cond_4
    iput-byte v1, p0, LL3/l;->i:B

    return v1
.end method

.method public final c()I
    .locals 5

    iget v0, p0, LL3/l;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, LL3/l;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, LL3/l;->f:I

    invoke-static {v1, v0}, LB1/j;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    :goto_1
    iget-object v3, p0, LL3/l;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, LL3/l;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR3/b;

    invoke-static {v4, v3}, LB1/j;->d(ILR3/b;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    iget-object v3, p0, LL3/l;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, LL3/l;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, LB1/j;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v1

    iget-object v1, p0, LL3/l;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v1, v0

    invoke-virtual {p0}, LR3/n;->j()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, LL3/l;->d:LR3/e;

    invoke-virtual {v1}, LR3/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, LL3/l;->j:I

    return v1
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LL3/k;->h()LL3/k;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LL3/k;->h()LL3/k;

    move-result-object v0

    invoke-virtual {v0, p0}, LL3/k;->i(LL3/l;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 5

    invoke-virtual {p0}, LL3/l;->c()I

    invoke-virtual {p0}, LR3/n;->n()LR3/m;

    move-result-object v0

    iget v1, p0, LL3/l;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, LL3/l;->f:I

    invoke-virtual {p1, v2, v1}, LB1/j;->n(II)V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LL3/l;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, LL3/l;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR3/b;

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, LL3/l;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, LL3/l;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f

    invoke-virtual {p1, v3, v2}, LB1/j;->n(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, LR3/m;->d(ILB1/j;)V

    iget-object p0, p0, LL3/l;->d:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
