.class public final Ln4/q;
.super Ln4/a;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:I


# direct methods
.method public constructor <init>(Lh4/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln4/q;->c:Ljava/lang/Object;

    iput p2, p0, Ln4/q;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ln4/q;->d:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Ln4/q;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Ln4/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ln4/p;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final l()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final m(ILjava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
