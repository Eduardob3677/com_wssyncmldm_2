.class public final LO3/j;
.super LR3/q;
.source "SourceFile"


# static fields
.field public static final i:LO3/j;

.field public static final j:LL3/a;


# instance fields
.field public final c:LR3/e;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:I

.field public g:B

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL3/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LL3/a;-><init>(I)V

    sput-object v0, LO3/j;->j:LL3/a;

    new-instance v0, LO3/j;

    invoke-direct {v0}, LO3/j;-><init>()V

    sput-object v0, LO3/j;->i:LO3/j;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LO3/j;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LO3/j;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LO3/j;->f:I

    iput-byte v0, p0, LO3/j;->g:B

    iput v0, p0, LO3/j;->h:I

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LO3/j;->c:LR3/e;

    return-void
.end method

.method public constructor <init>(LR3/f;LR3/i;)V
    .locals 9

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LO3/j;->f:I

    iput-byte v0, p0, LO3/j;->g:B

    iput v0, p0, LO3/j;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LO3/j;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LO3/j;->e:Ljava/util/List;

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

    if-nez v3, :cond_b

    :try_start_0
    invoke-virtual {p1}, LR3/f;->n()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_7

    const/16 v7, 0x28

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_2

    invoke-virtual {p1, v6, v2}, LR3/f;->q(ILB1/j;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LR3/f;->k()I

    move-result v6

    invoke-virtual {p1, v6}, LR3/f;->d(I)I

    move-result v6

    and-int/lit8 v7, v4, 0x2

    if-eq v7, v5, :cond_3

    invoke-virtual {p1}, LR3/f;->b()I

    move-result v7

    if-lez v7, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, LO3/j;->e:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {p1}, LR3/f;->b()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, LO3/j;->e:Ljava/util/List;

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v6}, LR3/f;->c(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, LO3/j;->e:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    :cond_6
    iget-object v6, p0, LO3/j;->e:Ljava/util/List;

    invoke-virtual {p1}, LR3/f;->k()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    and-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, LO3/j;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    :cond_8
    iget-object v6, p0, LO3/j;->d:Ljava/util/List;

    sget-object v7, LO3/i;->p:LL3/a;

    invoke-virtual {p1, v7, p2}, LR3/f;->g(LR3/c;LR3/i;)LR3/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_9

    iget-object p2, p0, LO3/j;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LO3/j;->d:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_a

    iget-object p2, p0, LO3/j;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LO3/j;->e:Ljava/util/List;

    :cond_a
    :try_start_2
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LO3/j;->c:LR3/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LO3/j;->c:LR3/e;

    throw p1

    :goto_5
    throw p1

    :cond_b
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_c

    iget-object p1, p0, LO3/j;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LO3/j;->d:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_d

    iget-object p1, p0, LO3/j;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LO3/j;->e:Ljava/util/List;

    :cond_d
    :try_start_3
    invoke-virtual {v2}, LB1/j;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p1

    iput-object p1, p0, LO3/j;->c:LR3/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, LR3/d;->l()LR3/e;

    move-result-object p2

    iput-object p2, p0, LO3/j;->c:LR3/e;

    throw p1

    :goto_6
    return-void
.end method

.method public constructor <init>(LR3/k;)V
    .locals 1

    invoke-direct {p0}, LR3/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LO3/j;->f:I

    iput-byte v0, p0, LO3/j;->g:B

    iput v0, p0, LO3/j;->h:I

    iget-object p1, p1, LR3/k;->c:LR3/e;

    iput-object p1, p0, LO3/j;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, LO3/j;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, LO3/j;->g:B

    return v1
.end method

.method public final c()I
    .locals 5

    iget v0, p0, LO3/j;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, LO3/j;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, LO3/j;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR3/b;

    const/4 v4, 0x1

    invoke-static {v4, v3}, LB1/j;->d(ILR3/b;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v3, p0, LO3/j;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, LO3/j;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, LB1/j;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v1

    iget-object v0, p0, LO3/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, LB1/j;->c(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iput v1, p0, LO3/j;->f:I

    iget-object v0, p0, LO3/j;->c:LR3/e;

    invoke-virtual {v0}, LR3/e;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, LO3/j;->h:I

    return v0
.end method

.method public final d()LR3/k;
    .locals 0

    invoke-static {}, LO3/f;->g()LO3/f;

    move-result-object p0

    return-object p0
.end method

.method public final e()LR3/k;
    .locals 1

    invoke-static {}, LO3/f;->g()LO3/f;

    move-result-object v0

    invoke-virtual {v0, p0}, LO3/f;->h(LO3/j;)V

    return-object v0
.end method

.method public final f(LB1/j;)V
    .locals 4

    invoke-virtual {p0}, LO3/j;->c()I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LO3/j;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LO3/j;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR3/b;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, LB1/j;->p(ILR3/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LO3/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, LB1/j;->w(I)V

    iget v1, p0, LO3/j;->f:I

    invoke-virtual {p1, v1}, LB1/j;->w(I)V

    :cond_1
    :goto_1
    iget-object v1, p0, LO3/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LO3/j;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, LB1/j;->o(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, LO3/j;->c:LR3/e;

    invoke-virtual {p1, p0}, LB1/j;->s(LR3/e;)V

    return-void
.end method
