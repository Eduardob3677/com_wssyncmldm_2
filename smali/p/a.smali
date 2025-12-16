.class public abstract Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final d(Lr3/D;LQ3/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Lr3/G;

    if-eqz v0, :cond_0

    check-cast p0, Lr3/G;

    invoke-interface {p0, p1, p2}, Lr3/G;->c(LQ3/c;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lr3/D;->b(LQ3/c;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public static final e(Ls3/h;Ls3/h;)Ls3/h;
    .locals 3

    const-string v0, "first"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "second"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ls3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ls3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ls3/i;

    const/4 v1, 0x2

    new-array v1, v1, [Ls3/h;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Ls3/i;-><init>([Ls3/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static f(Ljava/lang/Class;)Lw3/b;
    .locals 14

    const-string v0, "klass"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LK3/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, LK3/g;->c:[I

    iput-object v1, v0, LK3/g;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, LK3/g;->e:I

    iput-object v1, v0, LK3/g;->f:[Ljava/lang/String;

    iput-object v1, v0, LK3/g;->g:[Ljava/lang/String;

    iput-object v1, v0, LK3/g;->h:[Ljava/lang/String;

    iput-object v1, v0, LK3/g;->i:LK3/a;

    iput-object v1, v0, LK3/g;->j:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    const-string v4, "klass.declaredAnnotations"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    const-string v7, "annotation"

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v7

    invoke-static {v7}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v8

    invoke-virtual {v8}, LQ3/b;->b()LQ3/c;

    move-result-object v9

    sget-object v10, LA3/z;->a:LQ3/c;

    invoke-virtual {v9, v10}, LQ3/c;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v8, LK3/e;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, LK3/e;-><init>(LK3/g;I)V

    goto :goto_2

    :cond_0
    sget-object v10, LA3/z;->o:LQ3/c;

    invoke-virtual {v9, v10}, LQ3/c;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v8, LK3/e;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, LK3/e;-><init>(LK3/g;I)V

    goto :goto_2

    :cond_1
    sget-boolean v9, LK3/g;->k:Z

    if-eqz v9, :cond_3

    :cond_2
    :goto_1
    move-object v8, v1

    goto :goto_2

    :cond_3
    iget-object v9, v0, LK3/g;->i:LK3/a;

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    sget-object v9, LK3/g;->l:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LK3/a;

    if-eqz v8, :cond_2

    iput-object v8, v0, LK3/g;->i:LK3/a;

    new-instance v8, LK3/e;

    const/4 v9, 0x2

    invoke-direct {v8, v0, v9}, LK3/e;-><init>(LK3/g;I)V

    :goto_2
    if-eqz v8, :cond_5

    invoke-static {v8, v6, v7}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    new-instance v3, Lw3/b;

    sget-object v4, LP3/f;->g:LP3/f;

    iget-object v5, v0, LK3/g;->i:LK3/a;

    if-eqz v5, :cond_b

    iget-object v5, v0, LK3/g;->c:[I

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    new-instance v8, LP3/f;

    iget-object v5, v0, LK3/g;->c:[I

    iget v6, v0, LK3/g;->e:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-direct {v8, v5, v2}, LP3/f;-><init>([IZ)V

    invoke-virtual {v8, v4}, LP3/f;->b(LP3/f;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, LK3/g;->f:[Ljava/lang/String;

    iput-object v2, v0, LK3/g;->h:[Ljava/lang/String;

    iput-object v1, v0, LK3/g;->f:[Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object v2, v0, LK3/g;->i:LK3/a;

    sget-object v4, LK3/a;->f:LK3/a;

    if-eq v2, v4, :cond_a

    sget-object v4, LK3/a;->g:LK3/a;

    if-eq v2, v4, :cond_a

    sget-object v4, LK3/a;->j:LK3/a;

    if-ne v2, v4, :cond_c

    :cond_a
    iget-object v2, v0, LK3/g;->f:[Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_b
    :goto_3
    move-object v2, v1

    goto :goto_5

    :cond_c
    :goto_4
    iget-object v2, v0, LK3/g;->j:[Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, LP3/a;->b([Ljava/lang/String;)[B

    :cond_d
    new-instance v2, LK3/b;

    iget-object v7, v0, LK3/g;->i:LK3/a;

    iget-object v9, v0, LK3/g;->f:[Ljava/lang/String;

    iget-object v10, v0, LK3/g;->h:[Ljava/lang/String;

    iget-object v11, v0, LK3/g;->g:[Ljava/lang/String;

    iget-object v12, v0, LK3/g;->d:Ljava/lang/String;

    iget v13, v0, LK3/g;->e:I

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, LK3/b;-><init>(LK3/a;LP3/f;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5
    if-nez v2, :cond_e

    return-object v1

    :cond_e
    invoke-direct {v3, p0, v2}, Lw3/b;-><init>(Ljava/lang/Class;LK3/b;)V

    return-object v3
.end method

.method public static g()Ljava/lang/String;
    .locals 4

    const-string v0, "hidden_SEM_PEN_HOVERING"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/provider/Settings$System;

    invoke-static {v3, v0, v2}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_1
    const-string v0, "pen_hovering"

    return-object v0
.end method

.method public static h(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Lp/a;->j(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1
    invoke-static {p0, v2}, Lp/a;->j(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "getParentActivityIntent: bad parentActivityName \'"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in manifest"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static i(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    invoke-static {p0, p1}, Lp/a;->j(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lp/a;->j(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static j(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x100c0280

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "android.support.PARENT_ACTIVITY"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public static final k(Lr3/D;LQ3/c;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Lr3/G;

    if-eqz v0, :cond_0

    check-cast p0, Lr3/G;

    invoke-interface {p0, p1}, Lr3/G;->a(LQ3/c;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lp/a;->m(Lr3/D;LQ3/c;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static l()Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "com.samsung.android.view.SemWindowManager"

    const-string v3, "isTableMode"

    invoke-static {v2, v3, v1}, Li3/x;->Q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v3, v0, [Ljava/lang/Class;

    const-string v4, "getInstance"

    invoke-static {v2, v4, v3}, Li3/x;->Q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v4, v3

    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static final m(Lr3/D;LQ3/c;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lp/a;->d(Lr3/D;LQ3/c;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static p(Landroid/widget/Button;ZI)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const-string v2, "hidden_semSetButtonShapeEnabled"

    invoke-static {v1, v2, v0}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static q(Landroid/widget/TextView;Z)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const-string v2, "hidden_semSetButtonShapeEnabled"

    invoke-static {v1, v2, v0}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Lp/h;Lp/d;)Z
.end method

.method public abstract b(Lp/h;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract c(Lp/h;Lp/g;Lp/g;)Z
.end method

.method public abstract n(Lp/g;Lp/g;)V
.end method

.method public abstract o(Lp/g;Ljava/lang/Thread;)V
.end method
