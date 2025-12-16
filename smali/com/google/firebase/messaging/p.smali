.class public final Lcom/google/firebase/messaging/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ3/o;
.implements LJ3/m;
.implements LJ3/n;
.implements LK2/b;
.implements Lcom/google/android/gms/internal/firebase-auth-api/d4;
.implements Lcom/google/android/gms/internal/firebase-auth-api/X3;
.implements Ld4/e;
.implements Li/a;


# static fields
.field public static h:Lcom/google/firebase/messaging/p;


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/firebase/messaging/p;->c:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LI/c;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, LI/c;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    new-instance p1, Lo/k;

    invoke-direct {p1}, Lo/k;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lo/b;

    invoke-direct {p1}, Lo/k;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    new-instance p1, Lo/e;

    invoke-direct {p1}, Lo/e;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    new-instance p1, Lo/b;

    invoke-direct {p1}, Lo/k;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x9 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(LA3/D;LJ3/r;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LD3/e;LD3/g;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeParameterResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    new-instance p1, LZ0/h;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, LZ0/h;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    new-instance p2, Lcom/google/firebase/messaging/p;

    invoke-direct {p2, p1}, Lcom/google/firebase/messaging/p;-><init>(LZ0/h;)V

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJ3/c;Lcom/google/firebase/messaging/p;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJ3/d;LQ3/f;LJ3/c;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LL2/a;Landroid/os/Bundle;LL2/c;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LL2/a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LL3/E;LA3/D;LM3/a;LA3/d;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    iget-object p1, p1, LL3/E;->i:Ljava/util/List;

    const-string p2, "proto.class_List"

    invoke-static {p2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-static {p2}, LR2/z;->y1(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_0

    move p2, p3

    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, LL3/j;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, LN3/f;

    iget p4, p4, LL3/j;->g:I

    invoke-static {v0, p4}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZ0/h;)V
    .locals 2

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    new-instance v0, Lh4/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    new-instance p1, Lg4/l;

    const-string v0, "Type parameter upper bound erasure results"

    invoke-direct {p1, v0}, Lg4/l;-><init>(Ljava/lang/String;)V

    new-instance v0, LB3/k;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    new-instance v1, LQ2/h;

    invoke-direct {v1, v0}, LQ2/h;-><init>(Lc3/a;)V

    iput-object v1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    new-instance v0, LA3/d;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    new-instance p1, Lo/k;

    invoke-direct {p1}, Lo/k;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/W3;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/p;->R()Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;LW/b;)V
    .locals 5

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    new-instance p1, Landroidx/emoji2/text/q;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/q;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    const/4 p1, 0x6

    invoke-virtual {p2, p1}, LJ/F;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p2, LJ/F;->a:I

    add-int/2addr v0, v2

    iget-object v2, p2, LJ/F;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p2, LJ/F;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    invoke-virtual {p2, p1}, LJ/F;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    iget v0, p2, LJ/F;->a:I

    add-int/2addr p1, v0

    iget-object v0, p2, LJ/F;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p2, LJ/F;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_4

    new-instance v0, Landroidx/emoji2/text/m;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/m;-><init>(Lcom/google/firebase/messaging/p;I)V

    invoke-virtual {v0}, Landroidx/emoji2/text/m;->c()LW/a;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, LJ/F;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, LJ/F;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, LJ/F;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_3
    mul-int/lit8 v3, p2, 0x2

    iget-object v4, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v4, [C

    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    invoke-virtual {v0}, Landroidx/emoji2/text/m;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v4, v2}, LZ0/j;->k(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/emoji2/text/m;->b()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v3, Landroidx/emoji2/text/q;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/emoji2/text/q;->a(Landroidx/emoji2/text/m;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    new-instance p1, LH0/k;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LH0/k;-><init>(Lcom/google/firebase/messaging/p;I)V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    new-instance p1, LH0/k;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LH0/k;-><init>(Lcom/google/firebase/messaging/p;I)V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf4/i;)V
    .locals 5

    const/16 v0, 0xe

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    iget-object v0, p1, Lf4/i;->g:LL3/j;

    iget-object v0, v0, LL3/j;->v:Ljava/util/List;

    const-string v1, "classProto.enumEntryList"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {v1}, LR2/z;->y1(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LL3/t;

    iget-object v4, p1, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v4, v4, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v4, LN3/f;

    iget v3, v3, LL3/t;->f:I

    invoke-static {v4, v3}, LL2/b;->v(LN3/f;I)LQ3/f;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p1, Lf4/i;

    iget-object v0, p1, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->a:Lg4/o;

    new-instance v1, LE3/p;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2, p1}, LE3/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    check-cast v0, Lg4/l;

    invoke-virtual {v0, v1}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p1, Lf4/i;

    iget-object p1, p1, Lf4/i;->n:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object p1, p1, Ld4/i;->a:Lg4/o;

    new-instance v0, LB3/k;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg4/i;

    invoke-direct {v1, p1, v0}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg4/o;Lr3/x;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "module"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    new-instance p2, Lr3/B;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lr3/B;-><init>(Lcom/google/firebase/messaging/p;I)V

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p2}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    new-instance p2, Lr3/B;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lr3/B;-><init>(Lcom/google/firebase/messaging/p;I)V

    invoke-virtual {p1, p2}, Lg4/l;->b(Lc3/b;)Lg4/e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lcom/google/firebase/messaging/p;->c:I

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone"

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly/p;)V
    .locals 13

    const/16 v0, 0x15

    iput v0, p0, Lcom/google/firebase/messaging/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    iget-object v0, p1, Ly/p;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    iget-object v1, p1, Ly/p;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Ly/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    iget-object v2, p1, Ly/p;->s:Landroid/app/Notification;

    iget-wide v3, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->icon:I

    iget v5, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->ledARGB:I

    iget v6, v2, Landroid/app/Notification;->ledOnMS:I

    iget v7, v2, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v3, v4, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Ly/p;->e:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Ly/p;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Ly/p;->g:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v6, v7

    :goto_3
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Ly/p;->i:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v3, p1, Ly/p;->h:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v3, :cond_4

    move-object v0, v5

    goto :goto_4

    :cond_4
    invoke-static {v3, v0}, LC/c;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Ly/s;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Ly/p;->j:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Ly/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "android.support.allowGeneratedReplies"

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v5, v5}, Ly/s;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v3, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v1, v7}, Ly/t;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v3, "android.support.action.semanticAction"

    invoke-virtual {v4, v3, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v1, v7}, Ly/v;->b(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    invoke-static {v1, v7}, Ly/w;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    invoke-static {v1, v7}, Ly/x;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v3, "android.support.action.showsUserInterface"

    invoke-virtual {v4, v3, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v1, v4}, Ly/q;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object v3, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-static {v1}, Ly/q;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v1

    invoke-static {v3, v1}, Ly/q;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_5
    iget-object v0, p1, Ly/p;->n:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_6
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Ly/p;->k:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Ly/p;->m:Z

    invoke-static {v0, v1}, Ly/q;->i(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Ly/q;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Ly/q;->j(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v7}, Ly/q;->h(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Ly/r;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    iget v1, p1, Ly/p;->o:I

    invoke-static {v0, v1}, Ly/r;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    iget v1, p1, Ly/p;->p:I

    invoke-static {v0, v1}, Ly/r;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Ly/r;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v2, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1, v2}, Ly/r;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Ly/p;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification$Builder;

    invoke-static {v2, v1}, Ly/r;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_6

    :cond_7
    iget-object v0, p1, Ly/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, p1, Ly/p;->n:Landroid/os/Bundle;

    if-nez v1, :cond_8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Ly/p;->n:Landroid/os/Bundle;

    :cond_8
    iget-object v1, p1, Ly/p;->n:Landroid/os/Bundle;

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_9

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_9
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move v8, v7

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly/j;

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "icon"

    invoke-virtual {v11, v10, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "title"

    invoke-virtual {v11, v10, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v10, "actionIntent"

    invoke-virtual {v11, v10, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10, v3, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "extras"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v10, "remoteInputs"

    invoke-virtual {v11, v10, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v10, "showsUserInterface"

    invoke-virtual {v11, v10, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "semanticAction"

    invoke-virtual {v11, v10, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v9, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_a
    const-string v0, "invisible_actions"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p1, Ly/p;->n:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Ly/p;->n:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p1, Ly/p;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_c
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    iget-object v1, p1, Ly/p;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Ly/t;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v7}, Ly/u;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Ly/u;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Ly/u;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ly/u;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-static {v0, v7}, Ly/u;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Ly/p;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_d
    iget-object v0, p1, Ly/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    iget-boolean p1, p1, Ly/p;->r:Z

    invoke-static {v0, p1}, Ly/w;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p0, Landroid/app/Notification$Builder;

    invoke-static {p0, v5}, Ly/w;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    return-void

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    throw v5
.end method

.method public static C(LL2/a;LL2/c;)Landroid/os/Bundle;
    .locals 4

    const-string v0, ""

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v2, "serviceId"

    iget-object v3, p0, LL2/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serviceVersion"

    iget-object v3, p0, LL2/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serviceDefinedKey"

    iget-object v3, p1, LL2/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    iget-object v3, p1, LL2/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorDesc"

    iget-object p1, p1, LL2/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "relayClientVersion"

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "relayClientType"

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extension"

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceId"

    iget-object v2, p0, LL2/a;->f:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serviceAgreeType"

    iget-object v2, p0, LL2/a;->a:Landroid/content/Context;

    invoke-static {v2}, LN2/a;->a(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object p0, p0, LL2/a;->g:LB1/c;

    iget-object p0, p0, LB1/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, LL2/a;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sdkVersion"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const p1, 0x93b91

    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {v1, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sdkType"

    const-string p1, "S"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "memory"

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v0, "VM"

    invoke-static {}, LL2/c;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "NATIVE"

    invoke-static {}, LL2/c;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf1/a;->r(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    :try_start_4
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "storage"

    invoke-static {}, LL2/c;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Generated EventObject"

    invoke-static {p0}, Lf1/a;->r(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static F(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Removed zipFile : "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Couldn\'t removed zipFile : "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->r(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static O(LW1/g;Lcom/google/android/gms/internal/firebase-auth-api/v4;)La2/s;
    .locals 6

    invoke-static {p0}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, La2/q;

    invoke-direct {v1, p1}, La2/q;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/v4;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->h:Lcom/google/android/gms/internal/firebase-auth-api/B4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/B4;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, La2/q;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/A4;

    invoke-direct {v3, v4}, La2/q;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/A4;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, La2/s;

    invoke-direct {v1, p0, v0}, La2/s;-><init>(LW1/g;Ljava/util/ArrayList;)V

    new-instance p0, La2/t;

    iget-wide v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->l:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->k:J

    invoke-direct {p0, v2, v3, v4, v5}, La2/t;-><init>(JJ)V

    iput-object p0, v1, La2/s;->k:La2/t;

    iget-boolean p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->m:Z

    iput-boolean p0, v1, La2/s;->l:Z

    iget-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->n:LY1/r;

    iput-object p0, v1, La2/s;->m:LY1/r;

    iget-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->o:Ljava/util/List;

    invoke-static {p0}, Li3/x;->u1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, La2/s;->g(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public static o(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Zipped file size : "

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-static {v1, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    const-string v1, "Zipping logs is completed"

    invoke-static {v1}, Lf1/a;->r(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf1/a;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf1/a;->t(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    const-string v0, "fileDescriptor"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, LZ0/j;->e0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Zipping failure"

    invoke-static {p1}, Lf1/a;->r0(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf1/a;->r0(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string p0, "No Log Path, You have to set LogPath to report logs"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t(Landroid/content/Context;LL2/a;LL2/c;Landroid/os/Bundle;)Z
    .locals 5

    const-string v0, "wifiOnly"

    const-string v1, "networkMode : "

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "No Configuration"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    const-string p0, "You have to set DiagMonConfiguration"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/messaging/p;->C(LL2/a;LL2/c;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "No EventObject"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-static {p3}, LW1/a;->V(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "Invalid SR object"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-static {p1}, LW1/a;->V(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string p0, "Invalid ER object"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    return v2

    :cond_3
    const-string v3, "Valid SR, ER object"

    invoke-static {v3}, Lf1/a;->M(Ljava/lang/String;)V

    const-string v3, "Report your logs"

    invoke-static {v3}, Lf1/a;->M(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lf1/a;->M(Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p2, LL2/c;->b:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/google/firebase/messaging/p;->p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/firebase/messaging/p;->o(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p3, LN2/a;->b:Landroid/net/Uri;

    const-string v0, "event_report"

    const-string v3, "eventReport"

    invoke-virtual {p0, p3, v0, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, LN2/a;->c(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p2}, Lcom/google/firebase/messaging/p;->F(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v1

    :catch_0
    return v2
.end method

.method public static declared-synchronized y()Lcom/google/firebase/messaging/p;
    .locals 3

    const-class v0, Lcom/google/firebase/messaging/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/p;->h:Lcom/google/firebase/messaging/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/messaging/p;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/p;-><init>(I)V

    sput-object v1, Lcom/google/firebase/messaging/p;->h:Lcom/google/firebase/messaging/p;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/messaging/p;->h:Lcom/google/firebase/messaging/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public A(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public B(Lf4/t;)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Lf4/t;

    invoke-static {v0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/p;->B(Lf4/t;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public D(Landroid/content/Context;LL2/a;LL2/c;)Landroid/content/Intent;
    .locals 11

    const-string v0, "Description"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.diagmonagent.intent.REPORT_ERROR_APP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "DiagMon"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "CFailLogUpload"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iget-object p2, p2, LL2/a;->b:Ljava/lang/String;

    const-string v7, "ServiceID"

    invoke-virtual {v5, v7, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "Ext"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v5, "ClientV"

    invoke-static {p1}, LL2/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v5, "RelayClient"

    invoke-virtual {p2, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v5, "RelayClientV"

    invoke-virtual {p2, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v5, "UiMode"

    const-string v9, "0"

    invoke-virtual {p2, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v5, p3, LL2/c;->d:Ljava/lang/String;

    const-string v10, "ResultCode"

    invoke-virtual {p2, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p3, LL2/c;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v5, p3, LL2/c;->c:Ljava/lang/String;

    const-string v10, "EventID"

    invoke-virtual {p2, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    const-string p2, "SasdkV"

    const-string v5, "6.05.073"

    invoke-virtual {v1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "SdkV"

    sget-object v5, LN2/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const v5, 0x93b91

    :try_start_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v5, p1

    :goto_1
    :try_start_2
    invoke-virtual {v1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "TrackingID"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p3, LL2/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf1/a;->t(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const-string p2, "wifiOnly"

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string p1, "WifiOnlyFeature"

    if-eqz p0, :cond_4

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "1"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string p0, "uploadMO"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "EventObject is generated"

    invoke-static {p0}, Lf1/a;->M(Ljava/lang/String;)V

    return-object v2
.end method

.method public E(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const/4 v0, 0x1

    sget-object v1, LJ/Q;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p1, LH0/e;

    invoke-direct {p1, v0, p0}, LH0/e;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public G()V
    .locals 4

    const-string v0, "content://"

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v1, LL2/a;

    iget-object v1, v1, LL2/a;->b:Ljava/lang/String;

    sget-object v2, LN2/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.sec.android.log."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "update_path"

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, LL2/c;

    iget-object p0, p0, LL2/c;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p0, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to send log path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public H(Lh4/V;Ljava/util/List;LF3/a;)LS2/h;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, LS2/h;

    invoke-direct {v3}, LS2/h;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/v;

    invoke-virtual {v4}, Lh4/v;->J0()Lh4/J;

    move-result-object v5

    invoke-interface {v5}, Lh4/J;->i()Lr3/g;

    move-result-object v5

    instance-of v7, v5, Lr3/e;

    iget-object v8, v2, LF3/a;->e:Ljava/util/Set;

    iget-object v9, v0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v9, Lh4/d;

    if-eqz v7, :cond_14

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lh4/v;->M0()Lh4/Z;

    move-result-object v0

    instance-of v2, v0, Lh4/q;

    const-string v7, "argument.type"

    const-string v11, "constructor.parameters"

    if-eqz v2, :cond_c

    move-object v2, v0

    check-cast v2, Lh4/q;

    iget-object v13, v2, Lh4/q;->d:Lh4/z;

    invoke-virtual {v13}, Lh4/v;->J0()Lh4/J;

    move-result-object v14

    invoke-interface {v14}, Lh4/J;->k()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v13}, Lh4/v;->J0()Lh4/J;

    move-result-object v14

    invoke-interface {v14}, Lh4/J;->i()Lr3/g;

    move-result-object v14

    if-nez v14, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v13}, Lh4/v;->J0()Lh4/J;

    move-result-object v14

    invoke-interface {v14}, Lh4/J;->k()Ljava/util/List;

    move-result-object v14

    invoke-static {v11, v14}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v14}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr3/Q;

    invoke-virtual {v4}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v14}, Lr3/Q;->z0()I

    move-result v5

    invoke-static {v5, v6}, LR2/m;->P0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh4/N;

    if-eqz v8, :cond_1

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v5, :cond_2

    if-nez v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lh4/V;->g()Lh4/S;

    move-result-object v6

    invoke-virtual {v5}, Lh4/N;->b()Lh4/v;

    move-result-object v12

    invoke-static {v7, v12}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v12}, Lh4/S;->d(Lh4/v;)Lh4/N;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    new-instance v5, Lh4/E;

    invoke-direct {v5, v14}, Lh4/E;-><init>(Lr3/Q;)V

    :cond_3
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v13, v15, v6, v5}, Lh4/c;->p(Lh4/z;Ljava/util/List;Lh4/G;I)Lh4/z;

    move-result-object v13

    :cond_5
    :goto_2
    iget-object v2, v2, Lh4/q;->e:Lh4/z;

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v5

    invoke-interface {v5}, Lh4/J;->k()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v5

    invoke-interface {v5}, Lh4/J;->i()Lr3/g;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v5

    invoke-interface {v5}, Lh4/J;->k()Ljava/util/List;

    move-result-object v5

    invoke-static {v11, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr3/Q;

    invoke-virtual {v4}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10}, Lr3/Q;->z0()I

    move-result v12

    invoke-static {v12, v11}, LR2/m;->P0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh4/N;

    if-eqz v8, :cond_7

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    if-eqz v11, :cond_8

    if-nez v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Lh4/V;->g()Lh4/S;

    move-result-object v12

    invoke-virtual {v11}, Lh4/N;->b()Lh4/v;

    move-result-object v14

    invoke-static {v7, v14}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12, v14}, Lh4/S;->d(Lh4/v;)Lh4/N;

    move-result-object v12

    if-nez v12, :cond_9

    :cond_8
    new-instance v11, Lh4/E;

    invoke-direct {v11, v10}, Lh4/E;-><init>(Lr3/Q;)V

    :cond_9
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v2, v6, v11, v10}, Lh4/c;->p(Lh4/z;Ljava/util/List;Lh4/G;I)Lh4/z;

    move-result-object v2

    :cond_b
    :goto_5
    invoke-static {v13, v2}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object v2

    goto/16 :goto_8

    :cond_c
    instance-of v2, v0, Lh4/z;

    if-eqz v2, :cond_13

    move-object v2, v0

    check-cast v2, Lh4/z;

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v5

    invoke-interface {v5}, Lh4/J;->k()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v5

    invoke-interface {v5}, Lh4/J;->i()Lr3/g;

    move-result-object v5

    if-nez v5, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v2}, Lh4/v;->J0()Lh4/J;

    move-result-object v5

    invoke-interface {v5}, Lh4/J;->k()Ljava/util/List;

    move-result-object v5

    invoke-static {v11, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr3/Q;

    invoke-virtual {v4}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v10}, Lr3/Q;->z0()I

    move-result v12

    invoke-static {v12, v11}, LR2/m;->P0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh4/N;

    if-eqz v8, :cond_e

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    goto :goto_7

    :cond_e
    const/4 v12, 0x0

    :goto_7
    if-eqz v11, :cond_f

    if-nez v12, :cond_f

    invoke-virtual/range {p1 .. p1}, Lh4/V;->g()Lh4/S;

    move-result-object v12

    invoke-virtual {v11}, Lh4/N;->b()Lh4/v;

    move-result-object v13

    invoke-static {v7, v13}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Lh4/S;->d(Lh4/v;)Lh4/N;

    move-result-object v12

    if-nez v12, :cond_10

    :cond_f
    new-instance v11, Lh4/E;

    invoke-direct {v11, v10}, Lh4/E;-><init>(Lr3/Q;)V

    :cond_10
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v2, v6, v11, v10}, Lh4/c;->p(Lh4/z;Ljava/util/List;Lh4/G;I)Lh4/z;

    move-result-object v2

    :cond_12
    :goto_8
    invoke-static {v2, v0}, Lh4/c;->g(Lh4/Z;Lh4/v;)Lh4/Z;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lh4/V;->h(ILh4/v;)Lh4/v;

    move-result-object v0

    invoke-virtual {v3, v0}, LS2/h;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    new-instance v0, LA0/c;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_14
    instance-of v4, v5, Lr3/Q;

    if-eqz v4, :cond_16

    if-eqz v8, :cond_15

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_15

    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/p;->w(LF3/a;)Lh4/Z;

    move-result-object v0

    invoke-virtual {v3, v0}, LS2/h;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    check-cast v5, Lr3/Q;

    invoke-interface {v5}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    const-string v5, "declaration.upperBounds"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/firebase/messaging/p;->H(Lh4/V;Ljava/util/List;LF3/a;)LS2/h;

    move-result-object v0

    invoke-virtual {v3, v0}, LS2/h;->addAll(Ljava/util/Collection;)Z

    :cond_16
    :goto_9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_17
    iget-object v0, v3, LS2/h;->c:LS2/e;

    invoke-virtual {v0}, LS2/e;->c()V

    const/4 v1, 0x1

    iput-boolean v1, v0, LS2/e;->n:Z

    return-object v3
.end method

.method public I(Lx3/i;LF3/a;Z)Lh4/Z;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "arrayType"

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p1, Lx3/i;->b:Lx3/B;

    instance-of v4, v3, Lx3/z;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lx3/z;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_2

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object v4, v4, Lx3/z;->a:Ljava/lang/Class;

    invoke-static {v4, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LY3/c;->b(Ljava/lang/String;)LY3/c;

    move-result-object v4

    invoke-virtual {v4}, LY3/c;->d()Lo3/k;

    move-result-object v4

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v5

    :goto_2
    new-instance v6, LD3/c;

    iget-object v7, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v7, LD3/e;

    invoke-direct {v6, v7, p1, v2}, LD3/c;-><init>(LD3/e;LH3/b;Z)V

    iget-object p1, v7, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, LD3/a;

    iget-boolean p2, p2, LF3/a;->d:Z

    if-eqz v4, :cond_4

    iget-object p0, p1, LD3/a;->o:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0, v4}, Lo3/i;->q(Lo3/k;)Lh4/z;

    move-result-object p0

    new-instance p1, Ls3/i;

    invoke-virtual {p0}, Lh4/v;->t()Ls3/h;

    move-result-object p3

    new-array v1, v1, [Ls3/h;

    aput-object p3, v1, v0

    aput-object v6, v1, v2

    invoke-direct {p1, v1}, Ls3/i;-><init>([Ls3/h;)V

    invoke-static {p0, p1}, Lf1/a;->g0(Lh4/v;Ls3/h;)Lh4/v;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lh4/z;

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p1

    invoke-static {p0, p1}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_4
    const/4 v4, 0x6

    invoke-static {v1, p2, v0, v5, v4}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object p0

    const/4 v0, 0x3

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    move v2, v0

    :cond_5
    iget-object p1, p1, LD3/a;->o:Lr3/x;

    invoke-interface {p1}, Lr3/x;->g()Lo3/i;

    move-result-object p1

    invoke-virtual {p1, v2, p0, v6}, Lo3/i;->g(ILh4/v;Ls3/h;)Lh4/z;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p2, p1, LD3/a;->o:Lr3/x;

    invoke-interface {p2}, Lr3/x;->g()Lo3/i;

    move-result-object p2

    invoke-virtual {p2, v2, p0, v6}, Lo3/i;->g(ILh4/v;Ls3/h;)Lh4/z;

    move-result-object p2

    iget-object p1, p1, LD3/a;->o:Lr3/x;

    invoke-interface {p1}, Lr3/x;->g()Lo3/i;

    move-result-object p1

    invoke-virtual {p1, v0, p0, v6}, Lo3/i;->g(ILh4/v;Ls3/h;)Lh4/z;

    move-result-object p0

    invoke-virtual {p0, v2}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    invoke-static {p2, p0}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p0

    return-object p0
.end method

.method public J(LQ3/b;LQ3/f;)V
    .locals 1

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, LV3/i;

    invoke-direct {v0, p1, p2}, LV3/i;-><init>(LQ3/b;LQ3/f;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public K(LH3/d;LF3/a;)Lh4/v;
    .locals 5

    instance-of v0, p1, Lx3/z;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v2, LD3/e;

    if-eqz v0, :cond_2

    check-cast p1, Lx3/z;

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object p1, p1, Lx3/z;->a:Ljava/lang/Class;

    invoke-static {p1, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LY3/c;->b(Ljava/lang/String;)LY3/c;

    move-result-object p0

    invoke-virtual {p0}, LY3/c;->d()Lo3/k;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->o:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0, v1}, Lo3/i;->s(Lo3/k;)Lh4/z;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->o:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->w()Lh4/z;

    move-result-object p0

    :goto_1
    const-string p1, "{\n                val pr\u2026ns.unitType\n            }"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    instance-of v0, p1, Lx3/q;

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    check-cast p1, Lx3/q;

    iget-boolean v0, p2, LF3/a;->d:Z

    if-nez v0, :cond_3

    iget v0, p2, LF3/a;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p1}, Lx3/q;->c()Z

    move-result v0

    sget-object v2, Lj4/h;->e:Lj4/h;

    iget-object v4, p1, Lx3/q;->a:Ljava/lang/reflect/Type;

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/firebase/messaging/p;->q(Lx3/q;LF3/a;Lh4/z;)Lh4/z;

    move-result-object p0

    if-eqz p0, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    goto/16 :goto_3

    :cond_5
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, LF3/a;->b(I)LF3/a;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v1}, Lcom/google/firebase/messaging/p;->q(Lx3/q;LF3/a;Lh4/z;)Lh4/z;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    goto :goto_3

    :cond_6
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, LF3/a;->b(I)LF3/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/firebase/messaging/p;->q(Lx3/q;LF3/a;Lh4/z;)Lh4/z;

    move-result-object p0

    if-nez p0, :cond_7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object p0

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    new-instance p1, LF3/f;

    invoke-direct {p1, v1, p0}, LF3/f;-><init>(Lh4/z;Lh4/z;)V

    goto :goto_2

    :cond_8
    invoke-static {v1, p0}, Lh4/d;->j(Lh4/z;Lh4/z;)Lh4/Z;

    move-result-object p1

    :goto_2
    move-object p0, p1

    goto :goto_3

    :cond_9
    instance-of v0, p1, Lx3/i;

    if-eqz v0, :cond_a

    check-cast p1, Lx3/i;

    invoke-virtual {p0, p1, p2, v3}, Lcom/google/firebase/messaging/p;->I(Lx3/i;LF3/a;Z)Lh4/Z;

    move-result-object p0

    goto :goto_3

    :cond_a
    instance-of v0, p1, Lx3/E;

    if-eqz v0, :cond_c

    check-cast p1, Lx3/E;

    invoke-virtual {p1}, Lx3/E;->b()Lx3/B;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object p0

    goto :goto_3

    :cond_b
    iget-object p0, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->o:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->m()Lh4/z;

    move-result-object p0

    goto :goto_3

    :cond_c
    if-nez p1, :cond_d

    iget-object p0, v2, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LD3/a;

    iget-object p0, p0, LD3/a;->o:Lr3/x;

    invoke-interface {p0}, Lr3/x;->g()Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->m()Lh4/z;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public L()V
    .locals 10

    const v0, 0x1020048

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0, v1}, LJ/Q;->f(ILandroid/view/View;)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, LJ/Q;->d(ILandroid/view/View;)V

    const v3, 0x1020049

    invoke-static {v3, v1}, LJ/Q;->f(ILandroid/view/View;)V

    invoke-static {v2, v1}, LJ/Q;->d(ILandroid/view/View;)V

    const v4, 0x1020046

    invoke-static {v4, v1}, LJ/Q;->f(ILandroid/view/View;)V

    invoke-static {v2, v1}, LJ/Q;->d(ILandroid/view/View;)V

    const v5, 0x1020047

    invoke-static {v5, v1}, LJ/Q;->f(ILandroid/view/View;)V

    invoke-static {v2, v1}, LJ/Q;->d(ILandroid/view/View;)V

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Lj0/A;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Lj0/A;

    move-result-object v6

    invoke-virtual {v6}, Lj0/A;->a()I

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    iget-boolean v7, v1, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    if-nez v7, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v9, LH0/k;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, LH0/k;

    if-nez v7, :cond_7

    iget-object v4, v1, Landroidx/viewpager2/widget/ViewPager2;->i:LH0/i;

    invoke-virtual {v4}, Lj0/J;->A()I

    move-result v4

    if-ne v4, v8, :cond_3

    move v2, v8

    :cond_3
    if-eqz v2, :cond_4

    move v4, v0

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    if-eqz v2, :cond_5

    move v0, v3

    :cond_5
    iget v2, v1, Landroidx/viewpager2/widget/ViewPager2;->f:I

    sub-int/2addr v6, v8

    if-ge v2, v6, :cond_6

    new-instance v2, LK/c;

    invoke-direct {v2, v4}, LK/c;-><init>(I)V

    invoke-static {v1, v2, p0}, LJ/Q;->g(Landroid/view/View;LK/c;LK/r;)V

    :cond_6
    iget p0, v1, Landroidx/viewpager2/widget/ViewPager2;->f:I

    if-lez p0, :cond_9

    new-instance p0, LK/c;

    invoke-direct {p0, v0}, LK/c;-><init>(I)V

    invoke-static {v1, p0, v9}, LJ/Q;->g(Landroid/view/View;LK/c;LK/r;)V

    goto :goto_1

    :cond_7
    iget v0, v1, Landroidx/viewpager2/widget/ViewPager2;->f:I

    sub-int/2addr v6, v8

    if-ge v0, v6, :cond_8

    new-instance v0, LK/c;

    invoke-direct {v0, v5}, LK/c;-><init>(I)V

    invoke-static {v1, v0, p0}, LJ/Q;->g(Landroid/view/View;LK/c;LK/r;)V

    :cond_8
    iget p0, v1, Landroidx/viewpager2/widget/ViewPager2;->f:I

    if-lez p0, :cond_9

    new-instance p0, LK/c;

    invoke-direct {p0, v4}, LK/c;-><init>(I)V

    invoke-static {v1, p0, v9}, LJ/Q;->g(Landroid/view/View;LK/c;LK/r;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public M(LQ3/b;)Ld4/d;
    .locals 3

    const-string v0, "classId"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL3/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ld4/d;

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v2, Lc3/b;

    invoke-interface {v2, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr3/N;

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v2, LN3/f;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p0, LN3/a;

    invoke-direct {v1, v2, v0, p0, p1}, Ld4/d;-><init>(LN3/f;LL3/j;LN3/a;Lr3/N;)V

    return-object v1
.end method

.method public N(ILQ3/b;Lw3/a;)LJ3/c;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, LJ3/r;

    const-string v1, "signature"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, LJ3/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, LJ3/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, LJ3/r;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, LA3/D;

    iget-object p1, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, LA3/D;->d:Ljava/lang/Object;

    check-cast p0, LJ3/d;

    invoke-virtual {p0, p2, p3, p1}, LJ3/d;->l(LQ3/b;Lw3/a;Ljava/util/List;)LJ3/c;

    move-result-object p0

    return-object p0
.end method

.method public P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/messaging/p;->Q()Lcom/google/android/gms/internal/firebase-auth-api/u3;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/u3;->a:La1/d;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a()LR3/m;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, La1/d;->b(ILR3/m;)Lu1/n;

    move-result-object p0

    return-object p0
.end method

.method public Q()Lcom/google/android/gms/internal/firebase-auth-api/u3;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/u3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/p;->R()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/u3;

    iput-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "There was an error while initializing the connection to the GoogleApi: "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/u3;

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public R()Ljava/util/concurrent/Future;
    .locals 10

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/F3;

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/W3;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/F3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/W3;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v5, 0x3c

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {p0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "mfaProvider"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mfaPendingCredential"

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "sessionInfo"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v2, "code"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p0, "phoneVerificationInfo"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public c(Li/b;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/p;->u(Li/b;)Li/g;

    move-result-object p1

    new-instance v0, Lj/p;

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    check-cast p2, LD/a;

    invoke-direct {v0, v1, p2}, Lj/p;-><init>(Landroid/content/Context;LD/a;)V

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public c0(LV3/f;)V
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, LV3/r;

    new-instance v1, LV3/p;

    invoke-direct {v1, p1}, LV3/p;-><init>(LV3/f;)V

    invoke-direct {v0, v1}, LV3/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .locals 4

    iget v0, p0, Lcom/google/firebase/messaging/p;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v1, LJ3/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "elements"

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, LQ3/f;

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v1, LJ3/c;->g:Ljava/lang/Object;

    check-cast v2, Lr3/e;

    invoke-static {p0, v2}, Li3/x;->B(LQ3/f;Lr3/e;)Lu3/V;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, v1, LJ3/c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0}, Lq4/k;->e(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    check-cast v2, Lu3/W;

    invoke-virtual {v2}, Lu3/W;->e()Lh4/v;

    move-result-object v2

    const-string v3, "parameter.type"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, LV3/w;

    invoke-direct {v3, v0, v2}, LV3/w;-><init>(Ljava/util/List;Lh4/v;)V

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v2, v1, LJ3/c;->e:Ljava/lang/Object;

    check-cast v2, LJ3/d;

    iget-object v3, v1, LJ3/c;->h:Ljava/lang/Object;

    check-cast v3, LQ3/b;

    invoke-virtual {v2, v3}, LJ3/d;->j(LQ3/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v2, "value"

    invoke-static {p0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, LV3/a;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV3/a;

    iget-object v0, v0, LV3/g;->a:Ljava/lang/Object;

    check-cast v0, Ls3/b;

    iget-object v2, v1, LJ3/c;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, LJ3/m;

    invoke-interface {v0}, LJ3/m;->d()V

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/p;

    iget-object v0, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, LV3/a;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls3/b;

    invoke-direct {v1, p0}, LV3/a;-><init>(Ls3/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v1, LA3/D;

    iget-object v1, v1, LA3/D;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, LJ3/r;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(LQ3/b;Lw3/a;)LJ3/m;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v0, LA3/D;

    iget-object v0, v0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, LJ3/d;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2, p0}, LJ3/d;->l(LQ3/b;Lw3/a;Ljava/util/List;)LJ3/c;

    move-result-object p0

    return-object p0
.end method

.method public f(Li/b;Lj/i;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/p;->u(Li/b;)Li/g;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v0, Lo/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Lj/x;

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lj/x;-><init>(Landroid/content/Context;Lj/i;)V

    invoke-virtual {v0, p2, v1}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public g(LQ3/f;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1, p2}, LJ3/m;->g(LQ3/f;Ljava/lang/Object;)V

    return-void
.end method

.method public h(LQ3/f;LQ3/b;LQ3/f;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1, p2, p3}, LJ3/m;->h(LQ3/f;LQ3/b;LQ3/f;)V

    return-void
.end method

.method public i(LQ3/f;LV3/f;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1, p2}, LJ3/m;->i(LQ3/f;LV3/f;)V

    return-void
.end method

.method public j(LQ3/b;LQ3/f;)LJ3/m;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1, p2}, LJ3/m;->j(LQ3/b;LQ3/f;)LJ3/m;

    move-result-object p0

    return-object p0
.end method

.method public k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    const-string v3, "EMAIL"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    const-string v2, "PASSWORD"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-static {v1, v2, p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->s(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/G4;)V

    return-void
.end method

.method public l(Li/b;Lj/i;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/p;->u(Li/b;)Li/g;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v0, Lo/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Lj/x;

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lj/x;-><init>(Landroid/content/Context;Lj/i;)V

    invoke-virtual {v0, p2, v1}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public m(LQ3/f;)LJ3/n;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1}, LJ3/m;->m(LQ3/f;)LJ3/n;

    move-result-object p0

    return-object p0
.end method

.method public n(Li/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/p;->u(Li/b;)Li/g;

    move-result-object p1

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/ActionMode$Callback;

    invoke-interface {p0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public p0(LQ3/b;)LJ3/m;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lr3/N;->a:Lr3/M;

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v2, LJ3/d;

    invoke-virtual {v2, p1, v1, v0}, LJ3/d;->k(LQ3/b;Lr3/N;Ljava/util/List;)LJ3/c;

    move-result-object p1

    new-instance v1, Lcom/google/firebase/messaging/p;

    invoke-direct {v1, p1, p0, v0}, Lcom/google/firebase/messaging/p;-><init>(LJ3/c;Lcom/google/firebase/messaging/p;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public q(Lx3/q;LF3/a;Lh4/z;)Lh4/z;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    iget-object v2, v6, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, LD3/e;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual/range {p3 .. p3}, Lh4/v;->I0()Lh4/G;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v10, v3

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v3, LD3/c;

    invoke-direct {v3, v9, v7, v2}, LD3/c;-><init>(LD3/e;LH3/b;Z)V

    invoke-static {v3}, Lh4/c;->w(Ls3/h;)Lh4/G;

    move-result-object v3

    goto :goto_0

    :goto_2
    iget-object v3, v7, Lx3/q;->b:Lx3/s;

    const-string v4, "Type not found: "

    if-eqz v3, :cond_29

    instance-of v5, v3, Lx3/o;

    const-class v11, Ljava/lang/Object;

    const-string v12, "reflectType.upperBounds"

    iget v15, v8, LF3/a;->a:I

    iget v14, v8, LF3/a;->b:I

    iget-boolean v13, v8, LF3/a;->d:Z

    if-eqz v5, :cond_e

    check-cast v3, Lx3/o;

    invoke-virtual {v3}, Lx3/o;->b()LQ3/c;

    move-result-object v5

    if-eqz v13, :cond_4

    sget-object v1, LF3/c;->a:LQ3/c;

    invoke-static {v5, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v9, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->p:Lo3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lo3/l;->e:[Li3/o;

    aget-object v5, v5, v2

    iget-object v2, v1, Lo3/l;->c:Le4/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "property"

    invoke-static {v2, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5}, Li3/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo4/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v2

    iget-object v5, v1, Lo3/l;->b:LQ2/c;

    invoke-interface {v5}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La4/o;

    move-object/from16 v16, v10

    sget-object v10, Lz3/b;->d:Lz3/b;

    invoke-interface {v5, v2, v10}, La4/q;->c(LQ3/f;Lz3/b;)Lr3/g;

    move-result-object v5

    instance-of v10, v5, Lr3/e;

    if-eqz v10, :cond_2

    check-cast v5, Lr3/e;

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_3

    new-instance v5, LQ3/b;

    sget-object v10, Lo3/n;->h:LQ3/c;

    invoke-direct {v5, v10, v2}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v1, v1, Lo3/l;->a:Lcom/google/firebase/messaging/p;

    invoke-virtual {v1, v5, v2}, Lcom/google/firebase/messaging/p;->v(LQ3/b;Ljava/util/List;)Lr3/e;

    move-result-object v1

    goto/16 :goto_6

    :cond_3
    move-object v1, v5

    goto/16 :goto_6

    :cond_4
    move-object/from16 v16, v10

    iget-object v1, v9, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->o:Lr3/x;

    invoke-interface {v1}, Lr3/x;->g()Lo3/i;

    move-result-object v1

    invoke-static {v5, v1}, Lq3/e;->b(LQ3/c;Lo3/i;)Lr3/e;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_5
    sget-object v2, Lq3/d;->a:Ljava/lang/String;

    invoke-static {v1}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v2

    sget-object v5, Lq3/d;->k:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    if-eq v14, v2, :cond_9

    const/4 v2, 0x1

    if-eq v15, v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lx3/q;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, LR2/m;->V0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH3/d;

    instance-of v10, v2, Lx3/E;

    if-eqz v10, :cond_6

    check-cast v2, Lx3/E;

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lx3/E;->b()Lx3/B;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v2, v2, Lx3/E;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v12, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, LR2/i;->o0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v11}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x1

    xor-int/2addr v2, v10

    if-nez v2, :cond_a

    invoke-static {v1}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v2

    sget-object v10, Lq3/d;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ3/c;

    if-eqz v2, :cond_8

    invoke-static {v1}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object v5

    invoke-virtual {v5, v2}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object v2

    invoke-interface {v2}, Lr3/g;->H()Lh4/J;

    move-result-object v2

    invoke-interface {v2}, Lh4/J;->k()Ljava/util/List;

    move-result-object v2

    const-string v5, "JavaToKotlinClassMapper.\u2026ypeConstructor.parameters"

    invoke-static {v5, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, LR2/m;->V0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/Q;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lr3/Q;->A()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v5, 0x3

    if-eq v2, v5, :cond_a

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Given class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a read-only collection"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    invoke-static {v1}, Lq3/e;->a(Lr3/e;)Lr3/e;

    move-result-object v1

    :cond_a
    :goto_6
    if-nez v1, :cond_c

    iget-object v1, v9, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->k:Ls2/c;

    iget-object v1, v1, Ls2/c;->c:Ljava/lang/Object;

    check-cast v1, Ls2/c;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v3}, Ls2/c;->n(Lx3/o;)Lr3/e;

    move-result-object v1

    goto :goto_7

    :cond_b
    const-string v0, "resolver"

    invoke-static {v0}, Ld3/i;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    invoke-interface {v1}, Lr3/g;->H()Lh4/J;

    move-result-object v1

    if-eqz v1, :cond_d

    :goto_8
    move-object v10, v1

    goto :goto_9

    :cond_d
    new-instance v0, LQ3/c;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lx3/q;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v16, v10

    instance-of v1, v3, Lx3/C;

    if-eqz v1, :cond_28

    iget-object v1, v6, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v1, LD3/g;

    check-cast v3, Lx3/C;

    invoke-interface {v1, v3}, LD3/g;->a(Lx3/C;)Lr3/Q;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lr3/g;->H()Lh4/J;

    move-result-object v1

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    :goto_9
    if-nez v10, :cond_10

    const/4 v1, 0x0

    return-object v1

    :cond_10
    const/4 v2, 0x3

    if-ne v14, v2, :cond_11

    const/4 v13, 0x0

    goto :goto_b

    :cond_11
    if-nez v13, :cond_12

    const/4 v1, 0x1

    if-eq v15, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    :goto_a
    move v13, v1

    :goto_b
    if-eqz v0, :cond_13

    invoke-virtual/range {p3 .. p3}, Lh4/v;->J0()Lh4/J;

    move-result-object v1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1, v10}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lx3/q;->c()Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz v13, :cond_14

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lx3/q;->c()Z

    move-result v0

    const-string v1, "constructor.parameters"

    if-nez v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Lx3/q;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v10}, Lh4/J;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_15

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-interface {v10}, Lh4/J;->k()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_19

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lr3/Q;

    iget-object v0, v8, LF3/a;->e:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v14, v1, v0}, Lf1/a;->L(Lr3/Q;Lh4/J;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {v14, v8}, Lh4/X;->l(Lr3/Q;LF3/a;)Lh4/N;

    move-result-object v0

    move-object/from16 p3, v12

    goto :goto_10

    :cond_17
    new-instance v15, Lh4/x;

    iget-object v0, v9, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v5, v0, LD3/a;->a:Lg4/o;

    new-instance v4, LF3/b;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v8, v4

    move-object v4, v10

    move-object/from16 p3, v12

    move-object v12, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, LF3/b;-><init>(Lcom/google/firebase/messaging/p;Lr3/Q;LF3/a;Lh4/J;Lx3/q;)V

    invoke-direct {v15, v12, v8}, Lh4/x;-><init>(Lg4/o;Lc3/a;)V

    invoke-virtual/range {p1 .. p1}, Lx3/q;->c()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v5, 0x3b

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v5}, LF3/a;->a(LF3/a;IZLjava/util/Set;Lh4/z;I)LF3/a;

    move-result-object v0

    iget-object v1, v6, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v1, LZ0/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v6, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/messaging/p;

    invoke-static {v14, v0, v1, v15}, LZ0/h;->c(Lr3/Q;LF3/a;Lcom/google/firebase/messaging/p;Lh4/v;)Lh4/N;

    move-result-object v0

    :goto_10
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p2

    move-object/from16 v12, p3

    goto :goto_f

    :cond_18
    :goto_11
    move-object/from16 v3, v16

    goto/16 :goto_1d

    :cond_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lx3/q;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/Q;

    new-instance v3, Lh4/O;

    sget-object v4, Lj4/h;->u:Lj4/h;

    invoke-interface {v2}, Lr3/j;->getName()LQ3/f;

    move-result-object v2

    invoke-virtual {v2}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "p.name.asString()"

    invoke-static {v5, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object v2

    invoke-direct {v3, v2}, Lh4/O;-><init>(Lh4/v;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1a
    invoke-static {v0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    goto :goto_11

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lx3/q;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LR2/m;->k1(Ljava/util/List;)LR2/k;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, LR2/k;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    move-object v4, v0

    check-cast v4, LR2/y;

    iget-object v5, v4, LR2/y;->d:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v4}, LR2/y;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR2/x;

    iget-object v5, v4, LR2/x;->b:Ljava/lang/Object;

    check-cast v5, LH3/d;

    invoke-interface {v3}, Ljava/util/List;->size()I

    iget v4, v4, LR2/x;->a:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/Q;

    const/4 v7, 0x2

    const/4 v8, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v7, v14, v14, v15, v8}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v2

    const-string v14, "parameter"

    invoke-static {v14, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v14, v5, Lx3/E;

    if-eqz v14, :cond_26

    check-cast v5, Lx3/E;

    invoke-virtual {v5}, Lx3/E;->b()Lx3/B;

    move-result-object v14

    iget-object v15, v5, Lx3/E;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {v15}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-static {v12, v15}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v15}, LR2/i;->o0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v11}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    const/4 v7, 0x1

    xor-int/2addr v15, v7

    if-eqz v15, :cond_1c

    const/4 v15, 0x3

    goto :goto_14

    :cond_1c
    const/4 v15, 0x2

    :goto_14
    if-eqz v14, :cond_1e

    invoke-interface {v4}, Lr3/Q;->A()I

    move-result v8

    if-ne v8, v7, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-interface {v4}, Lr3/Q;->A()I

    move-result v7

    if-eq v15, v7, :cond_1f

    :cond_1e
    move-object/from16 p3, v0

    move-object/from16 v19, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto/16 :goto_1a

    :cond_1f
    :goto_15
    const-string v2, "c"

    invoke-static {v2, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "wildcardType"

    invoke-static {v2, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lx3/E;->b()Lx3/B;

    move-result-object v2

    if-eqz v2, :cond_25

    new-instance v2, LD3/c;

    const/4 v7, 0x0

    invoke-direct {v2, v9, v5, v7}, LD3/c;-><init>(LD3/e;LH3/b;Z)V

    invoke-virtual {v2}, LD3/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    move-object v5, v2

    check-cast v5, Lr4/e;

    invoke-virtual {v5}, Lr4/e;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v5}, Lr4/e;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ls3/b;

    sget-object v8, LA3/s;->b:[LQ3/c;

    move-object/from16 p3, v0

    array-length v0, v8

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_21

    move/from16 v18, v0

    aget-object v0, v8, v2

    move-object/from16 v19, v3

    invoke-interface {v7}, Ls3/b;->a()LQ3/c;

    move-result-object v3

    invoke-static {v3, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, v5

    goto :goto_18

    :cond_20
    const/4 v0, 0x1

    add-int/2addr v2, v0

    move/from16 v0, v18

    move-object/from16 v3, v19

    goto :goto_17

    :cond_21
    move-object/from16 v0, p3

    move-object/from16 v2, v17

    goto :goto_16

    :cond_22
    move-object/from16 p3, v0

    move-object/from16 v19, v3

    const/4 v0, 0x0

    :goto_18
    check-cast v0, Ls3/b;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v7, 0x0

    invoke-static {v2, v3, v3, v7, v5}, LL2/b;->N(IZZLu3/j;I)LF3/a;

    move-result-object v2

    invoke-virtual {v6, v14, v2}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v2

    if-eqz v0, :cond_24

    invoke-virtual {v2}, Lh4/v;->t()Ls3/h;

    move-result-object v5

    invoke-static {v5, v0}, LR2/m;->X0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_23

    sget-object v0, Ls3/g;->a:Ls3/f;

    goto :goto_19

    :cond_23
    new-instance v5, Ls3/i;

    invoke-direct {v5, v3, v0}, Ls3/i;-><init>(ILjava/lang/Object;)V

    move-object v0, v5

    :goto_19
    invoke-static {v2, v0}, Lf1/a;->g0(Lh4/v;Ls3/h;)Lh4/v;

    move-result-object v2

    :cond_24
    invoke-static {v2, v15, v4}, Lf1/a;->m(Lh4/v;ILr3/Q;)Lh4/O;

    move-result-object v0

    goto :goto_1b

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nullability annotations on unbounded wildcards aren\'t supported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1a
    invoke-static {v4, v2}, Lh4/X;->l(Lr3/Q;LF3/a;)Lh4/N;

    move-result-object v0

    :goto_1b
    const/4 v4, 0x1

    goto :goto_1c

    :cond_26
    move-object/from16 p3, v0

    move-object/from16 v19, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    new-instance v0, Lh4/O;

    invoke-virtual {v6, v5, v2}, Lcom/google/firebase/messaging/p;->K(LH3/d;LF3/a;)Lh4/v;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v4, v2}, Lh4/O;-><init>(ILh4/v;)V

    :goto_1c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    move-object/from16 v3, v19

    const/4 v2, 0x3

    goto/16 :goto_13

    :cond_27
    invoke-static {v1}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    goto/16 :goto_11

    :goto_1d
    invoke-static {v3, v10, v11, v13}, Lh4/d;->r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object v0

    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown classifier kind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, LQ3/c;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lx3/q;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Lo/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/google/firebase/messaging/p;->r(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This graph contains cyclic dependencies"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public run()V
    .locals 6

    const-string v0, "failed to customEventReport"

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v2, LL2/c;

    :try_start_0
    invoke-static {}, LN2/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, LL2/c;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    array-length v3, v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_7

    invoke-static {v1}, LN2/a;->a(Landroid/content/Context;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v5, LL2/a;

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    :try_start_1
    const-string p0, "Exceptional case"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    const-string p0, "customEventReport is aborted"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v1, v5, v2, p0}, Lcom/google/firebase/messaging/p;->t(Landroid/content/Context;LL2/a;LL2/c;Landroid/os/Bundle;)Z

    move-result p0

    goto :goto_1

    :cond_5
    const-string v3, "LEGACY DMA"

    invoke-static {v3}, Lf1/a;->r(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v2}, Lcom/google/firebase/messaging/p;->s(Landroid/content/Context;LL2/a;LL2/c;)Z

    move-result p0

    goto :goto_1

    :cond_6
    const-string p0, "not installed"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_8

    invoke-static {v0}, Lf1/a;->r0(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :goto_2
    const-string p0, "You have to properly set LogPath"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public s(Landroid/content/Context;LL2/a;LL2/c;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p2, LL2/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Service ID has to be set"

    invoke-static {v1}, Lf1/a;->r0(Ljava/lang/String;)V

    :goto_0
    move v1, v0

    goto :goto_2

    :cond_0
    iget-object v1, p2, LL2/a;->a:Landroid/content/Context;

    invoke-static {v1}, LN2/a;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p2, LL2/a;->g:LB1/c;

    iget-boolean v1, v1, LB1/c;->d:Z

    goto :goto_1

    :cond_1
    iget-boolean v1, p2, LL2/a;->e:Z

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "You have to agree to terms and conditions"

    invoke-static {v1}, Lf1/a;->r0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_2
    if-nez v1, :cond_3

    const-string p0, "Invalid DiagMonConfiguration"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    return v0

    :cond_3
    iget-object v1, p3, LL2/c;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "No Result code - you have to set"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    const-string p0, "Invalid EventBuilder"

    invoke-static {p0}, Lf1/a;->r0(Ljava/lang/String;)V

    return v0

    :cond_4
    const-string v1, "Valid EventBuilder"

    invoke-static {v1}, Lf1/a;->r(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/p;->G()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/messaging/p;->D(Landroid/content/Context;LL2/a;LL2/c;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "Report your logs"

    invoke-static {p0}, Lf1/a;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method public u(Li/b;)Li/g;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/g;

    if-eqz v3, :cond_0

    iget-object v4, v3, Li/g;->b:Li/b;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Li/g;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v1, p0, p1}, Li/g;-><init>(Landroid/content/Context;Li/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public u0(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v1, LJ3/d;

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, LQ3/f;

    invoke-static {v1, p0, p1}, LJ3/d;->b(LJ3/d;LQ3/f;Ljava/lang/Object;)LV3/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public v(LQ3/b;Ljava/util/List;)Lr3/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lr3/z;

    invoke-direct {v0, p1, p2}, Lr3/z;-><init>(LQ3/b;Ljava/util/List;)V

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, Lg4/e;

    invoke-virtual {p0, v0}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/e;

    return-object p0
.end method

.method public w(LF3/a;)Lh4/Z;
    .locals 0

    iget-object p1, p1, LF3/a;->f:Lh4/z;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lf1/a;->h0(Lh4/v;)Lh4/Z;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, LQ2/h;

    invoke-virtual {p0}, LQ2/h;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lj4/f;

    :cond_1
    return-object p1
.end method

.method public x(Lr3/Q;LF3/a;)Lh4/v;
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeAttr"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lh4/M;

    invoke-direct {v0, p1, p2}, Lh4/M;-><init>(Lr3/Q;LF3/a;)V

    iget-object p0, p0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast p0, Lg4/e;

    invoke-virtual {p0, v0}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/v;

    return-object p0
.end method

.method public z(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
