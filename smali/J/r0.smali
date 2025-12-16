.class public final LJ/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/c;
.implements Lu1/g;


# static fields
.field public static f:LJ/r0;


# instance fields
.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/c0;Landroidx/lifecycle/b0;)V
    .locals 1

    const-string v0, "store"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "factory"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lb0/a;->b:Lb0/a;

    invoke-direct {p0, p1, p2, v0}, LJ/r0;-><init>(Landroidx/lifecycle/c0;Landroidx/lifecycle/b0;Lb0/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/c0;Landroidx/lifecycle/b0;Lb0/b;)V
    .locals 1

    const-string v0, "store"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "factory"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/r0;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ/r0;->d:Ljava/lang/Object;

    iput-object p3, p0, LJ/r0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lh3/c;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "argumentRange"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/r0;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ/r0;->d:Ljava/lang/Object;

    iput-object p3, p0, LJ/r0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LJ/r0;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ/r0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LJ/r0;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ/r0;->d:Ljava/lang/Object;

    iput-object p3, p0, LJ/r0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr3/h;Ljava/util/List;LJ/r0;)V
    .locals 1

    const-string v0, "classifierDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "arguments"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/r0;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ/r0;->d:Ljava/lang/Object;

    iput-object p3, p0, LJ/r0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls2/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/r0;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, LJ/r0;->d:Ljava/lang/Object;

    new-instance p1, LV/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, LV/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LJ/r0;->e:Ljava/lang/Object;

    return-void
.end method

.method public static c(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_6

    if-eq v2, v3, :cond_6

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-class v3, Landroidx/emoji2/text/t;

    invoke-interface {p0, p1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/t;

    if-eqz v2, :cond_6

    array-length v3, v2

    if-lez v3, :cond_6

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eqz p2, :cond_2

    if-eq v6, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v5, p1, :cond_4

    :cond_3
    if-le p1, v6, :cond_5

    if-ge p1, v5, :cond_5

    :cond_4
    invoke-interface {p0, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method public static m(Landroid/content/Context;Landroid/util/AttributeSet;[III)LJ/r0;
    .locals 1

    new-instance v0, LJ/r0;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LJ/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lu1/n;
    .locals 7

    iget-object v0, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/r;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->d(Landroid/content/Context;)Lcom/google/firebase/messaging/g;

    move-result-object v2

    iget-object v3, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:LW1/g;

    invoke-virtual {v3}, LW1/g;->a()V

    const-string v4, "[DEFAULT]"

    iget-object v5, v3, LW1/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, LW1/g;->f()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/l;

    invoke-virtual {v4}, Lcom/google/firebase/messaging/l;->a()Ljava/lang/String;

    move-result-object v4

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1, v4, v5, v6}, Lcom/google/firebase/messaging/r;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    monitor-exit v2

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v5, v2, Lcom/google/firebase/messaging/g;->d:Ljava/lang/Object;

    check-cast v5, Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-static {v3, v1}, Lcom/google/firebase/messaging/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_1
    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_2
    iget-object p0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:LW1/g;

    invoke-virtual {p0}, LW1/g;->a()V

    const-string v1, "[DEFAULT]"

    iget-object v2, p0, LW1/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "FirebaseMessaging"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, LW1/g;->a()V

    iget-object p0, p0, LW1/g;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Invoking onNewToken for app: "

    if-eqz v2, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/google/firebase/messaging/g;

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/messaging/g;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p0}, Lcom/google/firebase/messaging/g;->j(Landroid/content/Intent;)Lu1/n;

    :cond_5
    invoke-static {p1}, Lp0/a;->j(Ljava/lang/Object;)Lu1/n;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public b()LL0/b;
    .locals 3

    iget-object v0, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " backendName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast v1, LI0/c;

    if-nez v1, :cond_1

    const-string v1, " priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, LL0/b;

    iget-object v1, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v2, [B

    iget-object p0, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast p0, LI0/c;

    invoke-direct {v0, v1, v2, p0}, LL0/b;-><init>(Ljava/lang/String;[BLI0/c;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Ljava/lang/Class;)Landroidx/lifecycle/Y;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LJ/r0;->e(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Y;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/Y;
    .locals 4

    const-string v0, "key"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/lifecycle/c0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Y;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/b0;

    if-eqz v2, :cond_2

    instance-of p0, v3, Landroidx/lifecycle/V;

    if-eqz p0, :cond_0

    check-cast v3, Landroidx/lifecycle/V;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object p0, v3, Landroidx/lifecycle/V;->f:Landroidx/lifecycle/r;

    if-eqz p0, :cond_1

    iget-object p1, v3, Landroidx/lifecycle/V;->g:Lx0/d;

    invoke-static {p1}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {v1, p1, p0}, Landroidx/lifecycle/S;->a(Landroidx/lifecycle/Y;Lx0/d;Landroidx/lifecycle/r;)V

    :cond_1
    const-string p0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {p0, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    new-instance v1, Lb0/c;

    iget-object p0, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast p0, Lb0/b;

    invoke-direct {v1, p0}, Lb0/c;-><init>(Lb0/b;)V

    sget-object p0, Landroidx/lifecycle/Z;->d:Landroidx/lifecycle/Z;

    iget-object v2, v1, Lb0/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v3, p1, v1}, Landroidx/lifecycle/b0;->e(Ljava/lang/Class;Lb0/c;)Landroidx/lifecycle/Y;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {v3, p1}, Landroidx/lifecycle/b0;->a(Ljava/lang/Class;)Landroidx/lifecycle/Y;

    move-result-object p0

    :goto_1
    const-string p1, "viewModel"

    invoke-static {p1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/Y;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/lifecycle/Y;->onCleared()V

    :cond_3
    return-object p0
.end method

.method public f(I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, v1}, Lz/d;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, v1}, Lf1/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public h(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lk/s;->a()Lk/s;

    move-result-object v0

    iget-object p0, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lk/s;->a:Lk/D0;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lk/D0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public i(IILk/P;)Landroid/graphics/Typeface;
    .locals 9

    iget-object v0, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 p1, 0x0

    if-nez v3, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, LJ/r0;->e:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, LJ/r0;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/TypedValue;

    sget-object v0, LA/r;->a:Ljava/lang/ThreadLocal;

    iget-object p0, p0, LJ/r0;->c:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v7, 0x1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, LA/r;->c(Landroid/content/Context;ILandroid/util/TypedValue;ILA/b;ZZ)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public j()Z
    .locals 19

    move-object/from16 v0, p0

    const/4 v2, 0x2

    iget-object v3, v0, LJ/r0;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/messaging/g;

    const-string v4, "gcm.n.noui"

    invoke-virtual {v3, v4}, Lcom/google/firebase/messaging/g;->c(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    :cond_0
    iget-object v4, v0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v8, "activity"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v10, v6, :cond_2

    iget v6, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v6, v8, :cond_3

    return v7

    :cond_3
    :goto_0
    const-string v6, "gcm.n.image"

    invoke-virtual {v3, v6}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v10, "FirebaseMessaging"

    if-eqz v8, :cond_4

    :goto_1
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :try_start_0
    new-instance v8, Lcom/google/firebase/messaging/k;

    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Lcom/google/firebase/messaging/k;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const-string v11, "Not downloading image, bad URL: "

    if-eqz v8, :cond_5

    invoke-virtual {v11, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_3
    if-eqz v8, :cond_6

    new-instance v6, Lcom/google/firebase/messaging/j;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v8, v6, Lcom/google/firebase/messaging/j;->a:Lcom/google/firebase/messaging/k;

    iget-object v0, v0, LJ/r0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {v0, v6}, Lp0/a;->d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lu1/n;

    move-result-object v0

    iput-object v0, v8, Lcom/google/firebase/messaging/k;->d:Lu1/n;

    :cond_6
    sget-object v0, Lcom/google/firebase/messaging/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v6, "Couldn\'t get own application info: "

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    :try_start_1
    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_7

    :goto_4
    move-object v11, v0

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_4

    :goto_5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v0, "gcm.n.android_channel_id"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x3

    :try_start_2
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v15, 0x1a

    if-lt v14, v15, :cond_d

    const-class v14, Landroid/app/NotificationManager;

    invoke-virtual {v4, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v14, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v15

    if-eqz v15, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x7a

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Notification Channel requested ("

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") has not been created by the app. Manifest configuration, or default, value will be used."

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v0, "com.google.firebase.messaging.default_notification_channel_id"

    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v14, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v9

    if-eqz v9, :cond_a

    goto :goto_8

    :cond_a
    const-string v0, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used."

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const-string v0, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used."

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const-string v0, "fcm_fallback_notification_channel"

    invoke-virtual {v14, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v9

    if-nez v9, :cond_e

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v5, "fcm_fallback_notification_channel_label"

    const-string v1, "string"

    invoke-virtual {v9, v5, v1, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name."

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Misc"

    goto :goto_7

    :cond_c
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    new-instance v5, Landroid/app/NotificationChannel;

    invoke-direct {v5, v0, v1, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v14, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_8

    :catch_2
    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_8
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v9, Ly/p;

    invoke-direct {v9, v4, v0}, Ly/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v14, v9, Ly/p;->s:Landroid/app/Notification;

    const-string v0, "gcm.n.title"

    invoke-virtual {v3, v1, v12, v0}, Lcom/google/firebase/messaging/g;->f(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_f

    invoke-static {v0}, Ly/p;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v9, Ly/p;->e:Ljava/lang/CharSequence;

    :cond_f
    const-string v0, "gcm.n.body"

    invoke-virtual {v3, v1, v12, v0}, Lcom/google/firebase/messaging/g;->f(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    invoke-static {v0}, Ly/p;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    iput-object v15, v9, Ly/p;->f:Ljava/lang/CharSequence;

    new-instance v15, Ly/n;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ly/p;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v15, Ly/n;->d:Ljava/lang/CharSequence;

    invoke-virtual {v9, v15}, Ly/p;->c(LK3/c;)V

    :cond_10
    const-string v0, "gcm.n.icon"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string v15, "drawable"

    invoke-virtual {v1, v0, v15, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_11

    goto :goto_a

    :cond_11
    const-string v15, "mipmap"

    invoke-virtual {v1, v0, v15, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_12

    goto :goto_a

    :cond_12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x3d

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Icon resource "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Notification will use default icon."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v0, "com.google.firebase.messaging.default_notification_icon"

    invoke-virtual {v11, v0, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_14

    goto :goto_9

    :cond_14
    :try_start_3
    invoke-virtual {v5, v12, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    if-eqz v13, :cond_15

    move v15, v13

    goto :goto_a

    :cond_15
    const v0, 0x1080093

    move v15, v0

    :goto_a
    iput v15, v14, Landroid/app/Notification;->icon:I

    const-string v0, "gcm.n.sound2"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v0, "gcm.n.sound"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v0, 0x0

    goto :goto_b

    :cond_17
    const-string v6, "default"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "raw"

    invoke-virtual {v1, v0, v6, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x18

    add-int/2addr v1, v6

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "android.resource://"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/raw/"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_b

    :cond_18
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    :goto_b
    const/4 v1, -0x1

    if-eqz v0, :cond_19

    iput-object v0, v14, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput v1, v14, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Ly/o;->b()Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v6, 0x4

    invoke-static {v0, v6}, Ly/o;->c(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v6, 0x5

    invoke-static {v0, v6}, Ly/o;->e(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0}, Ly/o;->a(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, v14, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_19
    const-string v0, "gcm.n.click_action"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_d

    :cond_1a
    const-string v0, "gcm.n.link_android"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v0, "gcm.n.link"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_1d

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_d

    :cond_1d
    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_1e

    const-string v0, "No activity found to launch app"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_d
    sget-object v0, Lcom/google/firebase/messaging/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v6, 0x44000000    # 512.0f

    const-string v12, "google.c.a.e"

    if-nez v5, :cond_1f

    const/4 v1, 0x0

    goto :goto_11

    :cond_1f
    const/high16 v13, 0x4000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v13, Landroid/os/Bundle;

    iget-object v15, v3, Lcom/google/firebase/messaging/g;->d:Ljava/lang/Object;

    check-cast v15, Landroid/os/Bundle;

    invoke-direct {v13, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v15}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_22

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    const-string v2, "google.c."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "gcm.n."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "gcm.notification."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_10

    :cond_20
    :goto_f
    const/4 v1, -0x1

    const/4 v2, 0x2

    goto :goto_e

    :cond_21
    :goto_10
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_f

    :cond_22
    invoke-virtual {v5, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v3, v12}, Lcom/google/firebase/messaging/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v3}, Lcom/google/firebase/messaging/g;->i()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gcm.n.analytics_data"

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v4, v1, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_11
    iput-object v1, v9, Ly/p;->g:Landroid/app/PendingIntent;

    invoke-virtual {v3, v12}, Lcom/google/firebase/messaging/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v0, 0x0

    goto :goto_12

    :cond_24
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/firebase/messaging/g;->i()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    const-string v12, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    invoke-direct {v5, v4, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "wrapped_intent"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v4, v0, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_25

    iput-object v0, v14, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_25
    const-string v0, "gcm.n.color"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    :try_start_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_13

    :catch_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x38

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Color is invalid: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Notification will use default color."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const-string v0, "com.google.firebase.messaging.default_notification_color"

    invoke-virtual {v11, v0, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_27

    :try_start_5
    invoke-static {v4, v0}, Lz/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_13

    :catch_5
    const-string v0, "Cannot find the color resource referenced in AndroidManifest."

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v9, Ly/p;->o:I

    :cond_28
    const-string v0, "gcm.n.sticky"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_29

    iget v0, v14, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v14, Landroid/app/Notification;->flags:I

    goto :goto_14

    :cond_29
    iget v0, v14, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, v14, Landroid/app/Notification;->flags:I

    :goto_14
    const-string v0, "gcm.n.local_only"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v9, Ly/p;->m:Z

    const-string v0, "gcm.n.ticker"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {v0}, Ly/p;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_2a
    const-string v0, "gcm.n.notification_priority"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_2b

    :goto_15
    const/4 v0, 0x0

    goto :goto_16

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_2d

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x48

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "notificationPriority is invalid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting notificationPriority."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_2d
    :goto_16
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v9, Ly/p;->j:I

    :cond_2e
    const-string v0, "gcm.n.visibility"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "NotificationParams"

    if-nez v0, :cond_2f

    :goto_17
    const/4 v0, 0x0

    goto :goto_18

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-lt v5, v6, :cond_30

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_31

    :cond_30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x35

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "visibility is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting visibility."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_31
    :goto_18
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v9, Ly/p;->p:I

    :cond_32
    const-string v0, "gcm.n.notification_count"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_33

    :goto_19
    const/4 v0, 0x0

    goto :goto_1a

    :cond_33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_34

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x43

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "notificationCount is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting notificationCount."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_34
    :goto_1a
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v9, Ly/p;->i:I

    :cond_35
    const-string v0, "gcm.n.event_time"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    :try_start_6
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_1b

    :catch_6
    invoke-static {v0}, Lcom/google/firebase/messaging/g;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x26

    add-int/2addr v6, v11

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Couldn\'t parse value of "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") into a long"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_37

    const/4 v5, 0x1

    iput-boolean v5, v9, Ly/p;->k:Z

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v14, Landroid/app/Notification;->when:J

    :cond_37
    const-string v0, "gcm.n.vibrate_timings"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_38

    :goto_1c
    const/4 v11, 0x0

    goto :goto_1e

    :cond_38
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_39

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v11, v5, [J

    move v12, v7

    :goto_1d
    if-ge v12, v5, :cond_3a

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v17

    aput-wide v17, v11, v12

    add-int/2addr v12, v6

    goto :goto_1d

    :cond_39
    new-instance v5, Lorg/json/JSONException;

    const-string v6, "vibrateTimings have invalid length"

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "User defined vibrateTimings is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping setting vibrateTimings."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_3a
    :goto_1e
    if-eqz v11, :cond_3b

    iput-object v11, v14, Landroid/app/Notification;->vibrate:[J

    :cond_3b
    const-string v5, ". Skipping setting LightSettings"

    const-string v6, "LightSettings is invalid: "

    const-string v0, "gcm.n.light_settings"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v11, :cond_3c

    :goto_1f
    const/4 v0, 0x0

    goto/16 :goto_21

    :cond_3c
    const/4 v12, 0x3

    new-array v0, v12, [I

    :try_start_8
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ne v13, v12, :cond_3e

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const/high16 v13, -0x1000000

    if-eq v12, v13, :cond_3d

    aput v12, v0, v7

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    aput v13, v0, v12

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    aput v13, v0, v12

    goto :goto_21

    :catch_8
    move-exception v0

    goto :goto_20

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "Transparent color is invalid"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Lorg/json/JSONException;

    const-string v12, "lightSettings don\'t have all three fields"

    invoke-direct {v0, v12}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_20
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x3c

    add-int/2addr v15, v12

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :catch_9
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x3a

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :goto_21
    if-eqz v0, :cond_40

    aget v2, v0, v7

    const/4 v5, 0x1

    aget v6, v0, v5

    const/4 v5, 0x2

    aget v0, v0, v5

    iput v2, v14, Landroid/app/Notification;->ledARGB:I

    iput v6, v14, Landroid/app/Notification;->ledOnMS:I

    iput v0, v14, Landroid/app/Notification;->ledOffMS:I

    if-eqz v6, :cond_3f

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_22

    :cond_3f
    move v0, v7

    :goto_22
    iget v2, v14, Landroid/app/Notification;->flags:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, v14, Landroid/app/Notification;->flags:I

    :cond_40
    const-string v0, "gcm.n.default_sound"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "gcm.n.default_vibrate_timings"

    invoke-virtual {v3, v1}, Lcom/google/firebase/messaging/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x2

    or-int/2addr v0, v1

    :cond_41
    const-string v1, "gcm.n.default_light_settings"

    invoke-virtual {v3, v1}, Lcom/google/firebase/messaging/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x4

    or-int/2addr v0, v1

    goto :goto_23

    :cond_42
    const/4 v1, 0x4

    :goto_23
    iput v0, v14, Landroid/app/Notification;->defaults:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_43

    iget v0, v14, Landroid/app/Notification;->flags:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, v14, Landroid/app/Notification;->flags:I

    :cond_43
    const-string v0, "gcm.n.tag"

    invoke-virtual {v3, v0}, Lcom/google/firebase/messaging/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    :goto_24
    move-object v1, v0

    goto :goto_25

    :cond_44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "FCM-Notification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :goto_25
    if-nez v8, :cond_45

    :goto_26
    const/4 v2, 0x3

    goto :goto_2a

    :cond_45
    :try_start_9
    iget-object v0, v8, Lcom/google/firebase/messaging/k;->d:Lu1/n;

    invoke-static {v0}, Lc1/D;->e(Ljava/lang/Object;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-static {v0, v5, v6, v2}, Lp0/a;->b(Lu1/n;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_46

    const/4 v2, 0x0

    goto :goto_27

    :cond_46
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object v0, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_27
    iput-object v2, v9, Ly/p;->h:Landroidx/core/graphics/drawable/IconCompat;

    new-instance v2, Ly/m;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    if-nez v0, :cond_47

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_28

    :cond_47
    new-instance v3, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object v0, v3, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_28
    iput-object v3, v2, Ly/m;->d:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v3, 0x0

    iput-object v3, v2, Ly/m;->e:Landroidx/core/graphics/drawable/IconCompat;

    iput-boolean v5, v2, Ly/m;->f:Z

    invoke-virtual {v9, v2}, Ly/p;->c(LK3/c;)V
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_26

    :catch_a
    move-exception v0

    goto :goto_29

    :catch_b
    const-string v0, "Failed to download image in time, showing notification without it"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/google/firebase/messaging/k;->close()V

    goto :goto_26

    :catch_c
    const-string v0, "Interrupted while downloading image, showing notification without it"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/google/firebase/messaging/k;->close()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_26

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to download image: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :goto_2a
    invoke-static {v10, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "Showing notification"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const-string v0, "notification"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v9}, Ly/p;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 v1, 0x1

    return v1
.end method

.method public k(Ljava/lang/CharSequence;IILandroidx/emoji2/text/m;)Z
    .locals 6

    const/4 v0, 0x1

    iget v1, p4, Landroidx/emoji2/text/m;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-object p0, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/g;

    invoke-virtual {p4}, Landroidx/emoji2/text/m;->c()LW/a;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, LJ/F;->a(I)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, v1, LJ/F;->d:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    iget v1, v1, LJ/F;->a:I

    add-int/2addr v4, v1

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_0
    check-cast p0, Landroidx/emoji2/text/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/emoji2/text/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/emoji2/text/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, LB/e;->a:I

    invoke-static {p0, p1}, LB/d;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_3
    move p0, v0

    :goto_1
    iput p0, p4, Landroidx/emoji2/text/m;->c:I

    :cond_4
    iget p0, p4, Landroidx/emoji2/text/m;->c:I

    if-ne p0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0
.end method

.method public l(Lcom/google/android/gms/internal/firebase-auth-api/a5;Ls/d;I)Z
    .locals 5

    iget-object v0, p2, Ls/d;->j0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object p0, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast p0, Lt/b;

    iput v2, p0, Lt/b;->a:I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lt/b;->b:I

    invoke-virtual {p2}, Ls/d;->n()I

    move-result v0

    iput v0, p0, Lt/b;->c:I

    invoke-virtual {p2}, Ls/d;->k()I

    move-result v0

    iput v0, p0, Lt/b;->d:I

    iput-boolean v1, p0, Lt/b;->i:Z

    iput p3, p0, Lt/b;->j:I

    iget p3, p0, Lt/b;->a:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iget v3, p0, Lt/b;->b:I

    if-ne v3, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, Ls/d;->Q:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_2

    move p3, v2

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-eqz v0, :cond_3

    iget v0, p2, Ls/d;->Q:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iget-object v3, p2, Ls/d;->n:[I

    const/4 v4, 0x4

    if-eqz p3, :cond_4

    aget p3, v3, v1

    if-ne p3, v4, :cond_4

    iput v2, p0, Lt/b;->a:I

    :cond_4
    if-eqz v0, :cond_5

    aget p3, v3, v2

    if-ne p3, v4, :cond_5

    iput v2, p0, Lt/b;->b:I

    :cond_5
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->b(Ls/d;Lt/b;)V

    iget p1, p0, Lt/b;->e:I

    invoke-virtual {p2, p1}, Ls/d;->H(I)V

    iget p1, p0, Lt/b;->f:I

    invoke-virtual {p2, p1}, Ls/d;->E(I)V

    iget-boolean p1, p0, Lt/b;->h:Z

    iput-boolean p1, p2, Ls/d;->y:Z

    iget p1, p0, Lt/b;->g:I

    invoke-virtual {p2, p1}, Ls/d;->B(I)V

    iput v1, p0, Lt/b;->j:I

    iget-boolean p0, p0, Lt/b;->i:Z

    return p0
.end method

.method public n()V
    .locals 0

    iget-object p0, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LJ/r0;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null backendName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onComplete(Lu1/h;)V
    .locals 2

    iget-object p1, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast p1, LY0/a;

    iget-object v0, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p1, LY0/a;->a:Lo/k;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, LY0/a;->a:Lo/k;

    invoke-virtual {p1, v0}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public p(Ls/e;II)V
    .locals 3

    iget v0, p1, Ls/d;->V:I

    iget v1, p1, Ls/d;->W:I

    const/4 v2, 0x0

    iput v2, p1, Ls/d;->V:I

    iput v2, p1, Ls/d;->W:I

    invoke-virtual {p1, p2}, Ls/d;->H(I)V

    invoke-virtual {p1, p3}, Ls/d;->E(I)V

    if-gez v0, :cond_0

    iput v2, p1, Ls/d;->V:I

    goto :goto_0

    :cond_0
    iput v0, p1, Ls/d;->V:I

    :goto_0
    if-gez v1, :cond_1

    iput v2, p1, Ls/d;->W:I

    goto :goto_1

    :cond_1
    iput v1, p1, Ls/d;->W:I

    :goto_1
    iget-object p0, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast p0, Ls/e;

    invoke-virtual {p0}, Ls/e;->O()V

    return-void
.end method

.method public q(Ls/e;)V
    .locals 8

    iget-object p0, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p1, Ls/e;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    iget-object v5, v4, Ls/d;->j0:[I

    aget v6, v5, v1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    aget v3, v5, v3

    if-ne v3, v7, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p1, Ls/e;->m0:Lt/e;

    iput-boolean v3, p0, Lt/e;->b:Z

    return-void
.end method

.method public r(Lr2/e;Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    new-instance v0, Lq1/o;

    iget-object v1, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object p0, p0, LJ/r0;->e:Ljava/lang/Object;

    check-cast p0, Le2/d;

    invoke-direct {v0, p2, v1, v2, p0}, Lq1/o;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Le2/d;)V

    const-class p0, Lr2/e;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le2/d;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, v0}, Le2/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Le2/b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "No encoder for "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
