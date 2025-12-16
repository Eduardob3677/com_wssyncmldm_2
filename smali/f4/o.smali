.class public final Lf4/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:[Li3/o;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Lg4/e;

.field public final e:Lg4/e;

.field public final f:Lg4/j;

.field public final g:Lg4/i;

.field public final h:Lg4/i;

.field public final synthetic i:Lf4/p;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lf4/o;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "functionNames"

    const-string v5, "getFunctionNames()Ljava/util/Set;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v4, "variableNames"

    const-string v5, "getVariableNames()Ljava/util/Set;"

    invoke-direct {v3, v2, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Li3/o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lf4/o;->j:[Li3/o;

    return-void
.end method

.method public constructor <init>(Lf4/p;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf4/o;->i:Lf4/p;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LR3/b;

    iget-object v3, p1, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v3, LN3/f;

    check-cast v2, LL3/y;

    iget v2, v2, LL3/y;->h:I

    invoke-static {v3, v2}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lf4/o;->c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lf4/o;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lf4/o;->i:Lf4/p;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LR3/b;

    iget-object v2, p1, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v2, LN3/f;

    check-cast v1, LL3/G;

    iget v1, v1, LL3/G;->h:I

    invoke-static {v2, v1}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lf4/o;->c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lf4/o;->b:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lf4/o;->i:Lf4/p;

    iget-object p1, p1, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object p1, p1, Ld4/i;->c:Ld4/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lf4/o;->i:Lf4/p;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, LR3/b;

    iget-object v1, p1, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v1, LN3/f;

    check-cast v0, LL3/T;

    iget v0, v0, LL3/T;->g:I

    invoke-static {v1, v0}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lf4/o;->c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lf4/o;->c:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lf4/o;->i:Lf4/p;

    iget-object p1, p1, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object p1, p1, Ld4/i;->a:Lg4/o;

    new-instance p2, Lf4/n;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lf4/n;-><init>(Lf4/o;I)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p2}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object p1

    iput-object p1, p0, Lf4/o;->d:Lg4/e;

    iget-object p1, p0, Lf4/o;->i:Lf4/p;

    iget-object p1, p1, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object p1, p1, Ld4/i;->a:Lg4/o;

    new-instance p2, Lf4/n;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lf4/n;-><init>(Lf4/o;I)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p2}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object p1

    iput-object p1, p0, Lf4/o;->e:Lg4/e;

    iget-object p1, p0, Lf4/o;->i:Lf4/p;

    iget-object p1, p1, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object p1, p1, Ld4/i;->a:Lg4/o;

    new-instance p2, Lf4/n;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lf4/n;-><init>(Lf4/o;I)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p2}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, Lf4/o;->f:Lg4/j;

    iget-object p1, p0, Lf4/o;->i:Lf4/p;

    iget-object p2, p1, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p2, Ld4/i;

    iget-object p2, p2, Ld4/i;->a:Lg4/o;

    new-instance p3, Lf4/m;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Lf4/m;-><init>(Lf4/o;Lf4/p;I)V

    check-cast p2, Lg4/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg4/i;

    invoke-direct {p1, p2, p3}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p1, p0, Lf4/o;->g:Lg4/i;

    iget-object p1, p0, Lf4/o;->i:Lf4/p;

    iget-object p2, p1, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p2, Ld4/i;

    iget-object p2, p2, Ld4/i;->a:Lg4/o;

    new-instance p3, Lf4/m;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p1, p4}, Lf4/m;-><init>(Lf4/o;Lf4/p;I)V

    check-cast p2, Lg4/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg4/i;

    invoke-direct {p1, p2, p3}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p1, p0, Lf4/o;->h:Lg4/i;

    return-void
.end method

.method public static c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 9

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, LR2/z;->y1(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR3/b;

    invoke-virtual {v5}, LR3/b;->c()I

    move-result v6

    invoke-static {v6}, LB1/j;->f(I)I

    move-result v7

    add-int/2addr v7, v6

    const/16 v8, 0x1000

    if-le v7, v8, :cond_0

    move v7, v8

    :cond_0
    invoke-static {v3, v7}, LB1/j;->j(Ljava/io/OutputStream;I)LB1/j;

    move-result-object v7

    invoke-virtual {v7, v6}, LB1/j;->w(I)V

    invoke-virtual {v5, v7}, LR3/b;->f(LB1/j;)V

    invoke-virtual {v7}, LB1/j;->i()V

    sget-object v5, LQ2/k;->a:LQ2/k;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 2

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lf4/o;->g:Lg4/i;

    sget-object v0, Lf4/o;->j:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p2, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0

    :cond_0
    iget-object p0, p0, Lf4/o;->d:Lg4/e;

    invoke-virtual {p0, p1}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final b(LQ3/f;Lz3/b;)Ljava/util/Collection;
    .locals 2

    const-string p2, "name"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lf4/o;->h:Lg4/i;

    sget-object v0, Lf4/o;->j:[Li3/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p2, v0}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0

    :cond_0
    iget-object p0, p0, Lf4/o;->e:Lg4/e;

    invoke-virtual {p0, p1}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
