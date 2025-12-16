.class public final Lr3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/Q;


# instance fields
.field public final c:Lr3/Q;

.field public final d:Lr3/j;

.field public final e:I


# direct methods
.method public constructor <init>(Lr3/Q;Lr3/j;I)V
    .locals 1

    const-string v0, "declarationDescriptor"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/d;->c:Lr3/Q;

    iput-object p2, p0, Lr3/d;->d:Lr3/j;

    iput p3, p0, Lr3/d;->e:I

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/Q;->A()I

    move-result p0

    return p0
.end method

.method public final F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0, p1, p2}, Lr3/j;->F0(Lr3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final H()Lh4/J;
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/g;->H()Lh4/J;

    move-result-object p0

    return-object p0
.end method

.method public final K()Lg4/o;
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/Q;->K()Lg4/o;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lr3/Q;
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/Q;->a()Lr3/Q;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/g;
    .locals 0

    invoke-virtual {p0}, Lr3/d;->a()Lr3/Q;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()Lr3/j;
    .locals 0

    invoke-virtual {p0}, Lr3/d;->a()Lr3/Q;

    move-result-object p0

    return-object p0
.end method

.method public final getName()LQ3/f;
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    return-object p0
.end method

.method public final getUpperBounds()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lr3/j;
    .locals 0

    iget-object p0, p0, Lr3/d;->d:Lr3/j;

    return-object p0
.end method

.method public final m()Lr3/N;
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/k;->m()Lr3/N;

    move-result-object p0

    return-object p0
.end method

.method public final m0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final n0()Z
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/Q;->n0()Z

    move-result p0

    return p0
.end method

.method public final q()Lh4/z;
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Lr3/g;->q()Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public final t()Ls3/h;
    .locals 0

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {p0}, Ls3/a;->t()Ls3/h;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lr3/d;->c:Lr3/Q;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "[inner-copy]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0()I
    .locals 1

    iget-object v0, p0, Lr3/d;->c:Lr3/Q;

    invoke-interface {v0}, Lr3/Q;->z0()I

    move-result v0

    iget p0, p0, Lr3/d;->e:I

    add-int/2addr v0, p0

    return v0
.end method
