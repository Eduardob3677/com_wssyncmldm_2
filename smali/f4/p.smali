.class public abstract Lf4/p;
.super La4/p;
.source "SourceFile"


# static fields
.field public static final synthetic f:[Li3/o;


# instance fields
.field public final b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

.field public final c:Lf4/o;

.field public final d:Lg4/i;

.field public final e:Lg4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lf4/p;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "classNames"

    const-string v5, "getClassNames$deserialization()Ljava/util/Set;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v4, "classifierNamesLazy"

    const-string v5, "getClassifierNamesLazy()Ljava/util/Set;"

    invoke-direct {v3, v2, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Li3/o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lf4/p;->f:[Li3/o;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lc3/a;)V
    .locals 1

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object v0, p1, Ld4/i;->c:Ld4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lf4/o;

    invoke-direct {v0, p0, p2, p3, p4}, Lf4/o;-><init>(Lf4/p;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lf4/p;->c:Lf4/o;

    new-instance p2, La4/j;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p5}, La4/j;-><init>(ILc3/a;)V

    iget-object p1, p1, Ld4/i;->a:Lg4/o;

    move-object p3, p1

    check-cast p3, Lg4/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lg4/i;

    invoke-direct {p4, p3, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p4, p0, Lf4/p;->d:Lg4/i;

    new-instance p2, LB3/k;

    const/16 p3, 0xd

    invoke-direct {p2, p3, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lg4/h;

    invoke-direct {p3, p1, p2}, Lg4/h;-><init>(Lg4/l;Lc3/a;)V

    iput-object p3, p0, Lf4/p;->e:Lg4/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lf4/p;->c:Lf4/o;

    iget-object p0, p0, Lf4/o;->g:Lg4/i;

    sget-object v0, Lf4/o;->j:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lf4/p;->c:Lf4/o;

    iget-object p0, p0, Lf4/o;->h:Lg4/i;

    sget-object v0, Lf4/o;->j:[Li3/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public c(LQ3/f;Lz3/b;)Lr3/g;
    .locals 0

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lf4/p;->q(LQ3/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p2, Ld4/i;

    invoke-virtual {p0, p1}, Lf4/p;->l(LQ3/f;)LQ3/b;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld4/i;->b(LQ3/b;)Lr3/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf4/p;->c:Lf4/o;

    iget-object p2, p0, Lf4/o;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lf4/o;->f:Lg4/j;

    invoke-virtual {p0, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf4/t;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public d(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lf4/p;->c:Lf4/o;

    invoke-virtual {p0, p1, p2}, Lf4/o;->a(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lf4/p;->e:Lg4/h;

    sget-object v0, Lf4/p;->f:[Li3/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "<this>"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "p"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg4/h;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public g(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lf4/p;->c:Lf4/o;

    invoke-virtual {p0, p1, p2}, Lf4/o;->b(LQ3/f;Lz3/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public abstract h(Ljava/util/ArrayList;Lc3/b;)V
.end method

.method public final i(La4/f;Lc3/b;)Ljava/util/List;
    .locals 12

    const-string v0, "kindFilter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameFilter"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget v2, La4/f;->f:I

    invoke-virtual {p1, v2}, La4/f;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p2}, Lf4/p;->h(Ljava/util/ArrayList;Lc3/b;)V

    :cond_0
    iget-object v2, p0, Lf4/p;->c:Lf4/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, La4/f;->j:I

    invoke-virtual {p1, v3}, La4/f;->a(I)Z

    move-result v3

    sget-object v4, LT3/j;->b:LT3/j;

    sget-object v5, LR2/u;->c:LR2/u;

    const-string v6, "name"

    if-eqz v3, :cond_4

    iget-object v3, v2, Lf4/o;->h:Lg4/i;

    sget-object v7, Lf4/o;->j:[Li3/o;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v3, v7}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LQ3/f;

    invoke-interface {p2, v10}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v6, v10}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v11, Lf4/o;->j:[Li3/o;

    aget-object v11, v11, v8

    invoke-static {v3, v11}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object v10, v5

    goto :goto_1

    :cond_2
    iget-object v11, v2, Lf4/o;->e:Lg4/e;

    invoke-virtual {v11, v10}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    :goto_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-static {v9, v4}, LR2/r;->D0(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    sget v3, La4/f;->i:I

    invoke-virtual {p1, v3}, La4/f;->a(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lf4/o;->g:Lg4/i;

    sget-object v7, Lf4/o;->j:[Li3/o;

    aget-object v7, v7, v1

    invoke-static {v3, v7}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LQ3/f;

    invoke-interface {p2, v9}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v6, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v10, Lf4/o;->j:[Li3/o;

    aget-object v10, v10, v1

    invoke-static {v3, v10}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    move-object v9, v5

    goto :goto_3

    :cond_6
    iget-object v10, v2, Lf4/o;->d:Lg4/e;

    invoke-virtual {v10, v9}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    :goto_3
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    invoke-static {v8, v4}, LR2/r;->D0(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    sget v1, La4/f;->l:I

    invoke-virtual {p1, v1}, La4/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lf4/p;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ3/f;

    invoke-interface {p2, v3}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v4, v4, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v4, Ld4/i;

    invoke-virtual {p0, v3}, Lf4/p;->l(LQ3/f;)LQ3/b;

    move-result-object v3

    invoke-virtual {v4, v3}, Ld4/i;->b(LQ3/b;)Lr3/e;

    move-result-object v3

    invoke-static {v0, v3}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    sget p0, La4/f;->g:I

    invoke-virtual {p1, p0}, La4/f;->a(I)Z

    move-result p0

    if-eqz p0, :cond_c

    iget-object p0, v2, Lf4/o;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQ3/f;

    invoke-interface {p2, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v2, Lf4/o;->f:Lg4/j;

    invoke-virtual {v1, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf4/t;

    invoke-static {v0, p1}, Lq4/k;->b(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    invoke-static {v0}, Lq4/k;->e(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j(LQ3/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public k(LQ3/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract l(LQ3/f;)LQ3/b;
.end method

.method public final m()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lf4/p;->d:Lg4/i;

    sget-object v0, Lf4/p;->f:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract n()Ljava/util/Set;
.end method

.method public abstract o()Ljava/util/Set;
.end method

.method public abstract p()Ljava/util/Set;
.end method

.method public q(LQ3/f;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf4/p;->m()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public r(Lf4/s;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
