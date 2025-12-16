.class public final LI3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b;


# static fields
.field public static final a:LI3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LI3/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LI3/b;->a:LI3/b;

    return-void
.end method


# virtual methods
.method public final a()LQ3/c;
    .locals 2

    invoke-static {p0}, LX3/f;->d(Ls3/b;)Lr3/e;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lj4/i;->f(Lr3/j;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, LX3/f;->c(Lr3/j;)LQ3/c;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()Lh4/v;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()Lr3/N;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "[EnhancedType]"

    return-object p0
.end method
