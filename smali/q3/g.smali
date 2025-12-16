.class public final Lq3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/c;


# static fields
.field public static final d:Lq3/e;

.field public static final synthetic e:[Li3/o;

.field public static final f:LQ3/c;

.field public static final g:LQ3/f;

.field public static final h:LQ3/b;


# instance fields
.field public final a:Lr3/x;

.field public final b:Lc3/b;

.field public final c:Lg4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lq3/g;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "cloneable"

    const-string v4, "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lq3/g;->e:[Li3/o;

    new-instance v0, Lq3/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq3/g;->d:Lq3/e;

    sget-object v0, Lo3/n;->j:LQ3/c;

    sput-object v0, Lq3/g;->f:LQ3/c;

    sget-object v0, Lo3/m;->c:LQ3/e;

    invoke-virtual {v0}, LQ3/e;->f()LQ3/f;

    move-result-object v1

    const-string v2, "cloneable.shortName()"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Lq3/g;->g:LQ3/f;

    invoke-virtual {v0}, LQ3/e;->g()LQ3/c;

    move-result-object v0

    invoke-static {v0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v0

    sput-object v0, Lq3/g;->h:LQ3/b;

    return-void
.end method

.method public constructor <init>(Lg4/o;Lu3/C;)V
    .locals 1

    sget-object v0, Lq3/f;->d:Lq3/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq3/g;->a:Lr3/x;

    iput-object v0, p0, Lq3/g;->b:Lc3/b;

    new-instance p2, LB3/c;

    const/16 v0, 0xc

    invoke-direct {p2, p0, v0, p1}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    check-cast p1, Lg4/l;

    new-instance v0, Lg4/i;

    invoke-direct {v0, p1, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object v0, p0, Lq3/g;->c:Lg4/i;

    return-void
.end method


# virtual methods
.method public final a(LQ3/c;LQ3/f;)Z
    .locals 0

    const-string p0, "packageFqName"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "name"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lq3/g;->g:LQ3/f;

    invoke-static {p2, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lq3/g;->f:LQ3/c;

    invoke-static {p1, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(LQ3/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lq3/g;->f:LQ3/c;

    invoke-static {p1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lq3/g;->c:Lg4/i;

    sget-object p1, Lq3/g;->e:[Li3/o;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/m;

    invoke-static {p0}, LL2/b;->I(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, LR2/w;->c:LR2/w;

    :goto_0
    return-object p0
.end method

.method public final c(LQ3/b;)Lr3/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lq3/g;->h:LQ3/b;

    invoke-static {p1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lq3/g;->c:Lg4/i;

    sget-object p1, Lq3/g;->e:[Li3/o;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LZ0/j;->N(Lg4/m;Li3/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/m;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
