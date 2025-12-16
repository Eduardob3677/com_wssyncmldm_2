.class public final Landroidx/room/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/String;

.field public final c:[J

.field public final d:Landroidx/room/d;

.field public final e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/room/f;[I[Ljava/lang/String;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/e;->d:Landroidx/room/d;

    iput-object p2, p0, Landroidx/room/e;->a:[I

    iput-object p3, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/e;->c:[J

    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    new-instance p1, Lo/c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lo/c;-><init>(I)V

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Lo/c;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/e;->e:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/e;->e:Ljava/util/Set;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a([J)V
    .locals 9

    iget-object v0, p0, Landroidx/room/e;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    aget-wide v4, p1, v4

    iget-object v6, p0, Landroidx/room/e;->c:[J

    aget-wide v7, v6, v3

    cmp-long v7, v7, v4

    if-gez v7, :cond_2

    aput-wide v4, v6, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v2, p0, Landroidx/room/e;->e:Ljava/util/Set;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Lo/c;

    invoke-direct {v2, v1}, Lo/c;-><init>(I)V

    :cond_1
    iget-object v4, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-object p0, p0, Landroidx/room/e;->d:Landroidx/room/d;

    invoke-virtual {p0, v2}, Landroidx/room/d;->onInvalidated(Ljava/util/Set;)V

    :cond_4
    return-void
.end method
