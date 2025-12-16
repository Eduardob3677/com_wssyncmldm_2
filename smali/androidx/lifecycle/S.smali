.class public abstract Landroidx/lifecycle/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/lifecycle/Z;

.field public static final b:Landroidx/lifecycle/Z;

.field public static final c:Landroidx/lifecycle/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/Z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/S;->a:Landroidx/lifecycle/Z;

    new-instance v0, Landroidx/lifecycle/Z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/S;->b:Landroidx/lifecycle/Z;

    new-instance v0, Landroidx/lifecycle/Z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/S;->c:Landroidx/lifecycle/Z;

    return-void
.end method

.method public static final a(Landroidx/lifecycle/Y;Lx0/d;Landroidx/lifecycle/r;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lifecycle"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Y;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_2

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p2, p1}, Landroidx/lifecycle/SavedStateHandleController;->b(Landroidx/lifecycle/r;Lx0/d;)V

    move-object p0, p2

    check-cast p0, Landroidx/lifecycle/y;

    iget-object p0, p0, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    sget-object v0, Landroidx/lifecycle/q;->d:Landroidx/lifecycle/q;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/lifecycle/q;->f:Landroidx/lifecycle/q;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p0, p2, p1}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(Landroidx/lifecycle/r;Lx0/d;)V

    invoke-virtual {p2, p0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/v;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lx0/d;->d()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/P;
    .locals 5

    if-nez p0, :cond_2

    if-nez p1, :cond_0

    new-instance p0, Landroidx/lifecycle/P;

    invoke-direct {p0}, Landroidx/lifecycle/P;-><init>()V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "key"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/P;

    invoke-direct {p1, p0}, Landroidx/lifecycle/P;-><init>(Ljava/util/HashMap;)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_2
    const-string p1, "keys"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "values"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v3}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Landroidx/lifecycle/P;

    invoke-direct {p0, v0}, Landroidx/lifecycle/P;-><init>(Ljava/util/HashMap;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid bundle passed as restored state"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Lb0/c;)Landroidx/lifecycle/P;
    .locals 7

    sget-object v0, Landroidx/lifecycle/S;->a:Landroidx/lifecycle/Z;

    iget-object p0, p0, Lb0/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx0/f;

    if-eqz v0, :cond_8

    sget-object v1, Landroidx/lifecycle/S;->b:Landroidx/lifecycle/Z;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/d0;

    if-eqz v1, :cond_7

    sget-object v2, Landroidx/lifecycle/S;->c:Landroidx/lifecycle/Z;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/Z;->d:Landroidx/lifecycle/Z;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-interface {v0}, Lx0/f;->getSavedStateRegistry()Lx0/d;

    move-result-object v0

    invoke-virtual {v0}, Lx0/d;->b()Lx0/c;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/T;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/T;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_5

    invoke-static {v1}, Landroidx/lifecycle/S;->f(Landroidx/lifecycle/d0;)Landroidx/lifecycle/U;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/U;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/P;

    if-nez v3, :cond_4

    sget-object v3, Landroidx/lifecycle/P;->f:[Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/lifecycle/T;->b()V

    iget-object v3, v0, Landroidx/lifecycle/T;->c:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    iget-object v5, v0, Landroidx/lifecycle/T;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    iget-object v5, v0, Landroidx/lifecycle/T;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iput-object v4, v0, Landroidx/lifecycle/T;->c:Landroid/os/Bundle;

    :cond_3
    invoke-static {v3, v2}, Landroidx/lifecycle/S;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/P;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/app/Activity;Landroidx/lifecycle/p;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "event"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Landroidx/lifecycle/w;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/w;

    invoke-interface {p0}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/y;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/y;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    :cond_0
    return-void
.end method

.method public static final e(Lx0/f;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/y;

    iget-object v0, v0, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    sget-object v1, Landroidx/lifecycle/q;->d:Landroidx/lifecycle/q;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/q;->e:Landroidx/lifecycle/q;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lx0/f;->getSavedStateRegistry()Lx0/d;

    move-result-object v0

    invoke-virtual {v0}, Lx0/d;->b()Lx0/c;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/T;

    invoke-interface {p0}, Lx0/f;->getSavedStateRegistry()Lx0/d;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/d0;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/T;-><init>(Lx0/d;Landroidx/lifecycle/d0;)V

    invoke-interface {p0}, Lx0/f;->getSavedStateRegistry()Lx0/d;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, Lx0/d;->c(Ljava/lang/String;Lx0/c;)V

    invoke-interface {p0}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/T;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/v;)V

    :cond_2
    return-void
.end method

.method public static final f(Landroidx/lifecycle/d0;)Landroidx/lifecycle/U;
    .locals 5

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Landroidx/lifecycle/U;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v1

    new-instance v3, Lb0/d;

    invoke-static {v1}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v3, v1}, Lb0/d;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ls2/c;

    const/4 v3, 0x0

    new-array v3, v3, [Lb0/d;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb0/d;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb0/d;

    const-string v3, "initializers"

    invoke-static {v3, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Ls2/c;->c:Ljava/lang/Object;

    new-instance v0, LJ/r0;

    invoke-interface {p0}, Landroidx/lifecycle/d0;->getViewModelStore()Landroidx/lifecycle/c0;

    move-result-object v3

    instance-of v4, p0, Landroidx/lifecycle/l;

    if-eqz v4, :cond_0

    check-cast p0, Landroidx/lifecycle/l;

    invoke-interface {p0}, Landroidx/lifecycle/l;->getDefaultViewModelCreationExtras()Lb0/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lb0/a;->b:Lb0/a;

    :goto_0
    invoke-direct {v0, v3, v1, p0}, LJ/r0;-><init>(Landroidx/lifecycle/c0;Landroidx/lifecycle/b0;Lb0/b;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v0, v2, p0}, LJ/r0;->e(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Y;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/U;

    return-object p0
.end method

.method public static g(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/N;->Companion:Landroidx/lifecycle/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/lifecycle/N;

    invoke-direct {v0}, Landroidx/lifecycle/N;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/O;

    invoke-direct {v2}, Landroid/app/Fragment;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public static final h(Landroid/view/View;Landroidx/lifecycle/w;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x7f0a02b4

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
