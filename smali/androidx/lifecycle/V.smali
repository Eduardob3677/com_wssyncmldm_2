.class public final Landroidx/lifecycle/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/b0;


# instance fields
.field public final c:Landroid/app/Application;

.field public final d:Landroidx/lifecycle/a0;

.field public final e:Landroid/os/Bundle;

.field public final f:Landroidx/lifecycle/r;

.field public final g:Lx0/d;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lx0/f;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lx0/f;->getSavedStateRegistry()Lx0/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/V;->g:Lx0/d;

    invoke-interface {p2}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/V;->f:Landroidx/lifecycle/r;

    iput-object p3, p0, Landroidx/lifecycle/V;->e:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/V;->c:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/a0;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/lifecycle/a0;

    invoke-direct {p2, p1}, Landroidx/lifecycle/a0;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/a0;

    :cond_0
    sget-object p1, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/a0;

    invoke-static {p1}, Ld3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/a0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/a0;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/V;->d:Landroidx/lifecycle/a0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/Y;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/V;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Y;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Y;
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/V;->f:Landroidx/lifecycle/r;

    if-eqz v0, :cond_7

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iget-object v2, p0, Landroidx/lifecycle/V;->c:Landroid/app/Application;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    sget-object v3, Landroidx/lifecycle/W;->a:Ljava/util/List;

    invoke-static {p1, v3}, Landroidx/lifecycle/W;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/lifecycle/W;->b:Ljava/util/List;

    invoke-static {p1, v3}, Landroidx/lifecycle/W;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_3

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/V;->d:Landroidx/lifecycle/a0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->a(Ljava/lang/Class;)Landroidx/lifecycle/Y;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/lifecycle/Z;->e:Landroidx/lifecycle/Z;

    if-nez p0, :cond_2

    new-instance p0, Landroidx/lifecycle/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Landroidx/lifecycle/Z;->e:Landroidx/lifecycle/Z;

    :cond_2
    sget-object p0, Landroidx/lifecycle/Z;->e:Landroidx/lifecycle/Z;

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Z;->a(Ljava/lang/Class;)Landroidx/lifecycle/Y;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    iget-object v4, p0, Landroidx/lifecycle/V;->g:Lx0/d;

    invoke-static {v4}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, p2}, Lx0/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/P;->f:[Ljava/lang/Class;

    iget-object p0, p0, Landroidx/lifecycle/V;->e:Landroid/os/Bundle;

    invoke-static {v5, p0}, Landroidx/lifecycle/S;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/P;

    move-result-object p0

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p2, p0}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/P;)V

    invoke-virtual {v5, v0, v4}, Landroidx/lifecycle/SavedStateHandleController;->b(Landroidx/lifecycle/r;Lx0/d;)V

    move-object p2, v0

    check-cast p2, Landroidx/lifecycle/y;

    iget-object p2, p2, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    sget-object v6, Landroidx/lifecycle/q;->d:Landroidx/lifecycle/q;

    if-eq p2, v6, :cond_5

    sget-object v6, Landroidx/lifecycle/q;->f:Landroidx/lifecycle/q;

    invoke-virtual {p2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p2, v0, v4}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(Landroidx/lifecycle/r;Lx0/d;)V

    invoke-virtual {v0, p2}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/v;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v4}, Lx0/d;->d()V

    :goto_3
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Landroidx/lifecycle/W;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/Y;

    move-result-object p0

    goto :goto_4

    :cond_6
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Landroidx/lifecycle/W;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/Y;

    move-result-object p0

    :goto_4
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, p1, v5}, Landroidx/lifecycle/Y;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/lang/Class;Lb0/c;)Landroidx/lifecycle/Y;
    .locals 3

    sget-object v0, Landroidx/lifecycle/Z;->d:Landroidx/lifecycle/Z;

    iget-object v1, p2, Lb0/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v2, Landroidx/lifecycle/S;->a:Landroidx/lifecycle/Z;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/lifecycle/S;->b:Landroidx/lifecycle/Z;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Landroidx/lifecycle/Z;->c:Landroidx/lifecycle/Z;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/lifecycle/W;->a:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/W;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/W;->b:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/W;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/V;->d:Landroidx/lifecycle/a0;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/a0;->e(Ljava/lang/Class;Lb0/c;)Landroidx/lifecycle/Y;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroidx/lifecycle/S;->c(Lb0/c;)Landroidx/lifecycle/P;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/W;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/Y;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/S;->c(Lb0/c;)Landroidx/lifecycle/P;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/W;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/Y;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/V;->f:Landroidx/lifecycle/r;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/V;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Y;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
