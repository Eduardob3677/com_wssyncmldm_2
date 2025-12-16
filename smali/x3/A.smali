.class public final Lx3/A;
.super Lx3/w;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "recordComponent"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/A;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Member;
    .locals 5

    const-string v0, "recordComponent"

    iget-object p0, p0, Lx3/A;->a:Ljava/lang/Object;

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lp0/b;->a:Lx3/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    new-instance v2, Lx3/a;

    const-string v3, "getType"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "getAccessor"

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lx3/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    new-instance v0, Lx3/a;

    invoke-direct {v0, v1, v1}, Lx3/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_0
    sput-object v0, Lp0/b;->a:Lx3/a;

    :cond_0
    iget-object v0, v0, Lx3/a;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.reflect.Method"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/Method;

    :goto_1
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getAccessor` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()LH3/d;
    .locals 5

    const-string v0, "recordComponent"

    iget-object p0, p0, Lx3/A;->a:Ljava/lang/Object;

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lp0/b;->a:Lx3/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    new-instance v2, Lx3/a;

    const-string v3, "getType"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "getAccessor"

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lx3/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    new-instance v0, Lx3/a;

    invoke-direct {v0, v1, v1}, Lx3/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_0
    sput-object v0, Lp0/b;->a:Lx3/a;

    :cond_0
    iget-object v0, v0, Lx3/a;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    :goto_1
    if-eqz v1, :cond_2

    new-instance p0, Lx3/q;

    invoke-direct {p0, v1}, Lx3/q;-><init>(Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NoSuchMethodError;

    const-string v0, "Can\'t find `getType` method"

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
