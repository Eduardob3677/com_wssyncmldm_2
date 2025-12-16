.class public final LE3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/a;


# static fields
.field public static final c:LE3/D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE3/D;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LE3/D;->c:LE3/D;

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, Lr3/e;

    sget p0, LE3/G;->p:I

    invoke-interface {p1}, Lr3/g;->H()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->j()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "it.typeConstructor.supertypes"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object p0

    sget-object p1, LE3/k;->i:LE3/k;

    invoke-static {p0, p1}, Lr4/m;->m(Lr4/k;Lc3/b;)Lr4/f;

    move-result-object p0

    new-instance p1, LR2/k;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, LR2/k;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method
