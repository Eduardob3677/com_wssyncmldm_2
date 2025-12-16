.class public final Lq4/h;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public c:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Lq4/h;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Lq4/h;->c:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lq4/h;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lq4/h;->c:Ljava/lang/Object;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lq4/h;->c:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v3, 0x5

    if-ge v0, v3, :cond_6

    iget-object v0, p0, Lq4/h;->c:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v3, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, LR2/i;->i0(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lq4/h;->d:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "elements"

    invoke-static {v3, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/LinkedHashSet;

    array-length v4, v0

    invoke-static {v4}, LR2/z;->y1(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    add-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v0, "copyOf(this, newSize)"

    invoke-static {v0, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, v3

    sub-int/2addr v0, v1

    aput-object p1, v3, v0

    :goto_1
    iput-object v3, p0, Lq4/h;->c:Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lq4/h;->c:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v3, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Ld3/t;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    :goto_2
    iget p1, p0, Lq4/h;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lq4/h;->d:I

    return v1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lq4/h;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lq4/h;->d:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lq4/h;->d:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lq4/h;->c:Ljava/lang/Object;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget-object p0, p0, Lq4/h;->c:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, LR2/i;->i0(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lq4/h;->c:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lq4/h;->d:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ln4/p;

    iget-object p0, p0, Lq4/h;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ln4/p;-><init>(ILjava/lang/Object;)V

    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    new-instance v0, Lq4/g;

    iget-object p0, p0, Lq4/h;->c:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v1, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0}, Lq4/g;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lq4/h;->c:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Ld3/t;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lq4/h;->d:I

    return p0
.end method
