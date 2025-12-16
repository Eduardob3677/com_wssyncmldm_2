.class public abstract Lj0/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj0/B;

.field public b:Z

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj0/B;

    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    iput-object v0, p0, Lj0/A;->a:Lj0/B;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj0/A;->b:Z

    const/4 v0, 0x1

    iput v0, p0, Lj0/A;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public c(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract d(Lj0/b0;I)V
.end method

.method public abstract e(Landroidx/recyclerview/widget/RecyclerView;I)Lj0/b0;
.end method

.method public f()I
    .locals 0

    invoke-virtual {p0}, Lj0/A;->a()I

    move-result p0

    return p0
.end method

.method public g(I)I
    .locals 0

    return p1
.end method

.method public final h(Z)V
    .locals 1

    iget-object v0, p0, Lj0/A;->a:Lj0/B;

    invoke-virtual {v0}, Lj0/B;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lj0/A;->b:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
