.class public final LR3/N;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements LR3/x;


# instance fields
.field public final c:LR3/x;


# direct methods
.method public constructor <init>(LR3/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, LR3/N;->c:LR3/x;

    return-void
.end method


# virtual methods
.method public final c()LR3/N;
    .locals 0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LR3/N;->c:LR3/x;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LR3/N;->c:LR3/x;

    invoke-interface {p0}, LR3/x;->h()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i(LR3/z;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LR3/v;

    invoke-direct {v0, p0}, LR3/v;-><init>(LR3/N;)V

    return-object v0
.end method

.method public final j(I)LR3/e;
    .locals 0

    iget-object p0, p0, LR3/N;->c:LR3/x;

    invoke-interface {p0, p1}, LR3/x;->j(I)LR3/e;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, LR3/M;

    invoke-direct {v0, p0, p1}, LR3/M;-><init>(LR3/N;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, LR3/N;->c:LR3/x;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
