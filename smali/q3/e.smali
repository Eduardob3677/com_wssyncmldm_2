.class public final Lq3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/a;


# static fields
.field public static final c:Lq3/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lq3/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq3/e;->c:Lq3/e;

    return-void
.end method

.method public static a(Lr3/e;)Lr3/e;
    .locals 3

    invoke-static {p0}, LT3/e;->g(Lr3/j;)LQ3/e;

    move-result-object v0

    sget-object v1, Lq3/d;->a:Ljava/lang/String;

    sget-object v1, Lq3/d;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ3/c;

    if-eqz v0, :cond_0

    invoke-static {p0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object p0

    invoke-virtual {p0, v0}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a read-only collection"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(LQ3/c;Lo3/i;)Lr3/e;
    .locals 1

    const-string v0, "builtIns"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lq3/d;->a:Ljava/lang/String;

    sget-object v0, Lq3/d;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, LQ3/c;->i()LQ3/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ3/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo3/i;->i(LQ3/c;)Lr3/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public r(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, Lr3/c;

    sget-object p0, Lq3/n;->g:[Li3/o;

    invoke-interface {p1}, Lr3/c;->a()Lr3/c;

    move-result-object p0

    invoke-interface {p0}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
