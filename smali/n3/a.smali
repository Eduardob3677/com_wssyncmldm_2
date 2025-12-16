.class public abstract Ln3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashSet;

.field public static final b:LQ3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, LA3/z;->a:LQ3/c;

    sget-object v1, LA3/z;->h:LQ3/c;

    sget-object v2, LA3/z;->i:LQ3/c;

    sget-object v3, LA3/z;->c:LQ3/c;

    sget-object v4, LA3/z;->d:LQ3/c;

    sget-object v5, LA3/z;->f:LQ3/c;

    filled-new-array/range {v0 .. v5}, [LQ3/c;

    move-result-object v0

    invoke-static {v0}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ3/c;

    invoke-static {v2}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sput-object v1, Ln3/a;->a:Ljava/util/LinkedHashSet;

    sget-object v0, LA3/z;->g:LQ3/c;

    invoke-static {v0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v0

    sput-object v0, Ln3/a;->b:LQ3/b;

    return-void
.end method
