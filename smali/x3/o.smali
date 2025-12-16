.class public final Lx3/o;
.super Lx3/s;
.source "SourceFile"

# interfaces
.implements LH3/b;
.implements LH3/e;


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "klass"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/o;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    const-string v0, "klass.declaredFields"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/i;->h0([Ljava/lang/Object;)Lr4/k;

    move-result-object p0

    sget-object v0, Lx3/l;->l:Lx3/l;

    new-instance v1, Lr4/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lr4/f;-><init>(Lr4/k;ZLc3/b;)V

    sget-object p0, Lx3/m;->l:Lx3/m;

    invoke-static {v1, p0}, Lr4/m;->l(Lr4/k;Lc3/b;)Lr4/r;

    move-result-object p0

    invoke-static {p0}, Lr4/m;->n(Lr4/k;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b()LQ3/c;
    .locals 1

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-static {p0}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object p0

    invoke-virtual {p0}, LQ3/b;->b()LQ3/c;

    move-result-object p0

    const-string v0, "klass.classId.asSingleFqName()"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "klass.declaredMethods"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LR2/i;->h0([Ljava/lang/Object;)Lr4/k;

    move-result-object v0

    new-instance v1, LA3/d;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lr4/m;->i(Lr4/k;Lc3/b;)Lr4/f;

    move-result-object p0

    sget-object v0, Lx3/n;->l:Lx3/n;

    invoke-static {p0, v0}, Lr4/m;->l(Lr4/k;Lc3/b;)Lr4/r;

    move-result-object p0

    invoke-static {p0}, Lr4/m;->n(Lr4/k;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 9

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    const-string v0, "clazz"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lo3/f;->a:Lcom/google/firebase/messaging/p;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Class;

    :try_start_0
    new-instance v8, Lcom/google/firebase/messaging/p;

    const-string v1, "isSealed"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v1, "getPermittedSubclasses"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v1, "isRecord"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v1, "getRecordComponents"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v6, 0x14

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/google/firebase/messaging/p;

    const/16 v6, 0x14

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_0
    sput-object v0, Lo3/f;->a:Lcom/google/firebase/messaging/p;

    :cond_0
    iget-object v0, v0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, [Ljava/lang/Object;

    :goto_1
    const/4 p0, 0x0

    if-nez v7, :cond_2

    new-array v7, p0, [Ljava/lang/Object;

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, v7

    :goto_2
    if-ge p0, v1, :cond_3

    aget-object v2, v7, p0

    new-instance v3, Lx3/A;

    invoke-direct {v3, v2}, Lx3/A;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final e()Z
    .locals 9

    const-string v0, "clazz"

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lo3/f;->a:Lcom/google/firebase/messaging/p;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Class;

    :try_start_0
    new-instance v8, Lcom/google/firebase/messaging/p;

    const-string v1, "isSealed"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v1, "getPermittedSubclasses"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v1, "isRecord"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v1, "getRecordComponents"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v6, 0x14

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/google/firebase/messaging/p;

    const/16 v6, 0x14

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_0
    sput-object v0, Lo3/f;->a:Lcom/google/firebase/messaging/p;

    :cond_0
    iget-object v0, v0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, p0

    check-cast v7, Ljava/lang/Boolean;

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lx3/o;

    if-eqz v0, :cond_0

    check-cast p1, Lx3/o;

    iget-object p1, p1, Lx3/o;->a:Ljava/lang/Class;

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 9

    const-string v0, "clazz"

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lo3/f;->a:Lcom/google/firebase/messaging/p;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Class;

    :try_start_0
    new-instance v8, Lcom/google/firebase/messaging/p;

    const-string v1, "isSealed"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v1, "getPermittedSubclasses"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v1, "isRecord"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v1, "getRecordComponents"

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v6, 0x14

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/google/firebase/messaging/p;

    const/16 v6, 0x14

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_0
    sput-object v0, Lo3/f;->a:Lcom/google/firebase/messaging/p;

    :cond_0
    iget-object v0, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, p0

    check-cast v7, Ljava/lang/Boolean;

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final t()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lo4/a;->h([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, LR2/u;->c:LR2/u;

    :goto_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lx3/o;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Ljava/util/ArrayList;
    .locals 5

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    const-string v0, "klass.typeParameters"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lx3/C;

    invoke-direct {v4, v3}, Lx3/C;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final v(LQ3/c;)Lx3/e;
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lx3/o;->a:Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lo4/a;->d([Ljava/lang/annotation/Annotation;LQ3/c;)Lx3/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
