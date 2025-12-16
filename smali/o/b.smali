.class public final Lo/b;
.super Lo/k;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public j:Lo/a;


# direct methods
.method public constructor <init>(Lo/b;)V
    .locals 4

    invoke-direct {p0}, Lo/k;-><init>()V

    if-eqz p1, :cond_1

    iget v0, p1, Lo/k;->e:I

    invoke-virtual {p0, v0}, Lo/k;->b(I)V

    iget v1, p0, Lo/k;->e:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    iget-object v1, p1, Lo/k;->c:[I

    iget-object v3, p0, Lo/k;->c:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lo/k;->d:[Ljava/lang/Object;

    iget-object v1, p0, Lo/k;->d:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lo/k;->e:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lo/k;->h(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lo/k;->j(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lo/b;->j:Lo/a;

    if-nez v0, :cond_0

    new-instance v0, Lo/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lo/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lo/b;->j:Lo/a;

    :cond_0
    iget-object p0, p0, Lo/b;->j:Lo/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v0, Lo/h;

    if-nez v0, :cond_1

    new-instance v0, Lo/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/h;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/X;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast p0, Lo/h;

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lo/b;->j:Lo/a;

    if-nez v0, :cond_0

    new-instance v0, Lo/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lo/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lo/b;->j:Lo/a;

    :cond_0
    iget-object p0, p0, Lo/b;->j:Lo/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    check-cast v0, Lo/h;

    if-nez v0, :cond_1

    new-instance v0, Lo/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo/h;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/X;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    check-cast p0, Lo/h;

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Lo/k;->e:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lo/k;->b(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lo/b;->j:Lo/a;

    if-nez v0, :cond_0

    new-instance v0, Lo/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lo/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lo/b;->j:Lo/a;

    :cond_0
    iget-object p0, p0, Lo/b;->j:Lo/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->d:Ljava/lang/Object;

    check-cast v0, Lo/j;

    if-nez v0, :cond_1

    new-instance v0, Lo/j;

    invoke-direct {v0, p0}, Lo/j;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/X;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->d:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->d:Ljava/lang/Object;

    check-cast p0, Lo/j;

    return-object p0
.end method
