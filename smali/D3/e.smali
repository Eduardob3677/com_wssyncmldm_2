.class public final LD3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ3/m;
.implements Lcom/google/android/gms/internal/firebase-auth-api/d4;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LD3/a;LD3/g;LQ2/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LD3/e;->c:I

    const-string v0, "components"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeParameterResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "delegateForDefaultTypeQualifiers"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD3/e;->d:Ljava/lang/Object;

    iput-object p2, p0, LD3/e;->e:Ljava/lang/Object;

    iput-object p3, p0, LD3/e;->f:Ljava/lang/Object;

    iput-object p3, p0, LD3/e;->g:Ljava/lang/Object;

    new-instance p1, Lcom/google/firebase/messaging/p;

    invoke-direct {p1, p0, p2}, Lcom/google/firebase/messaging/p;-><init>(LD3/e;LD3/g;)V

    iput-object p1, p0, LD3/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJ3/c;LJ3/c;LQ3/f;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LD3/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD3/e;->e:Ljava/lang/Object;

    iput-object p2, p0, LD3/e;->f:Ljava/lang/Object;

    iput-object p3, p0, LD3/e;->g:Ljava/lang/Object;

    iput-object p4, p0, LD3/e;->h:Ljava/lang/Object;

    iput-object p1, p0, LD3/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LL0/b;LI0/b;LL0/k;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LD3/e;->c:I

    sget-object v0, Lcom/google/firebase/messaging/e;->g:Lcom/google/firebase/messaging/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD3/e;->d:Ljava/lang/Object;

    const-string p1, "FCM_CLIENT_EVENT_LOGGING"

    iput-object p1, p0, LD3/e;->e:Ljava/lang/Object;

    iput-object p2, p0, LD3/e;->f:Ljava/lang/Object;

    iput-object v0, p0, LD3/e;->g:Ljava/lang/Object;

    iput-object p3, p0, LD3/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LD3/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LD3/e;->g:Ljava/lang/Object;

    iput-object p1, p0, LD3/e;->d:Ljava/lang/Object;

    const-string p1, "topic_operation_queue"

    iput-object p1, p0, LD3/e;->e:Ljava/lang/Object;

    const-string p1, ","

    iput-object p1, p0, LD3/e;->f:Ljava/lang/Object;

    iput-object p2, p0, LD3/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LD3/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD3/e;->d:Ljava/lang/Object;

    invoke-static {}, Lk/s;->a()Lk/s;

    move-result-object p1

    iput-object p1, p0, LD3/e;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/G4;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LD3/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD3/e;->h:Ljava/lang/Object;

    iput-object p3, p0, LD3/e;->d:Ljava/lang/Object;

    iput-object p2, p0, LD3/e;->e:Ljava/lang/Object;

    iput-object p4, p0, LD3/e;->f:Ljava/lang/Object;

    iput-object p5, p0, LD3/e;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LD3/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LD3/e;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, LD3/e;->e:Ljava/lang/Object;

    iput-object p3, p0, LD3/e;->f:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, LD3/e;->g:Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD3/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public static c(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)LD3/e;
    .locals 5

    new-instance v0, LD3/e;

    invoke-direct {v0, p0, p1}, LD3/e;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V

    iget-object p0, v0, LD3/e;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    monitor-enter p0

    :try_start_0
    iget-object p1, v0, LD3/e;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iget-object p1, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    iget-object v1, v0, LD3/e;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, LD3/e;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, LD3/e;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v3, "FirebaseMessaging"

    const-string v4, "Corrupted queue. Please check the queue contents and item separator provided"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, LD3/e;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit p0

    :goto_2
    return-object v0

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, LD3/e;->f:Ljava/lang/Object;

    check-cast v2, Lk/x1;

    if-eqz v2, :cond_4

    iget-object v2, p0, LD3/e;->h:Ljava/lang/Object;

    check-cast v2, Lk/x1;

    if-nez v2, :cond_0

    new-instance v2, Lk/x1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, LD3/e;->h:Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, LD3/e;->h:Ljava/lang/Object;

    check-cast v2, Lk/x1;

    const/4 v3, 0x0

    iput-object v3, v2, Lk/x1;->a:Landroid/content/res/ColorStateList;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lk/x1;->d:Z

    iput-object v3, v2, Lk/x1;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v4, v2, Lk/x1;->c:Z

    sget-object v3, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LJ/I;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iput-boolean v4, v2, Lk/x1;->d:Z

    iput-object v3, v2, Lk/x1;->a:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {v0}, LJ/I;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-boolean v4, v2, Lk/x1;->c:Z

    iput-object v3, v2, Lk/x1;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v3, v2, Lk/x1;->d:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lk/x1;->c:Z

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v1, v2, p0}, Lk/s;->d(Landroid/graphics/drawable/Drawable;Lk/x1;[I)V

    return-void

    :cond_4
    iget-object v2, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast v2, Lk/x1;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v1, v2, p0}, Lk/s;->d(Landroid/graphics/drawable/Drawable;Lk/x1;[I)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, LD3/e;->f:Ljava/lang/Object;

    check-cast p0, Lk/x1;

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, p0, v0}, Lk/s;->d(Landroid/graphics/drawable/Drawable;Lk/x1;[I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/d4;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, LD3/e;->e:Ljava/lang/Object;

    check-cast v0, LJ3/m;

    invoke-interface {v0}, LJ3/m;->d()V

    new-instance v0, LV3/a;

    iget-object v1, p0, LD3/e;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/b;

    invoke-direct {v0, v1}, LV3/a;-><init>(Ls3/b;)V

    iget-object v1, p0, LD3/e;->f:Ljava/lang/Object;

    check-cast v1, LJ3/c;

    iget-object p0, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast p0, LQ3/f;

    invoke-virtual {v1, p0, v0}, LJ3/c;->q(LQ3/f;LV3/g;)V

    return-void
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast p0, Lk/x1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/x1;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public f()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast p0, Lk/x1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/x1;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public g(LQ3/f;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1, p2}, LJ3/m;->g(LQ3/f;Ljava/lang/Object;)V

    return-void
.end method

.method public h(LQ3/f;LQ3/b;LQ3/f;)V
    .locals 0

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1, p2, p3}, LJ3/m;->h(LQ3/f;LQ3/b;LQ3/f;)V

    return-void
.end method

.method public i(LQ3/f;LV3/f;)V
    .locals 0

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1, p2}, LJ3/m;->i(LQ3/f;LV3/f;)V

    return-void
.end method

.method public j(LQ3/b;LQ3/f;)LJ3/m;
    .locals 0

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1, p2}, LJ3/m;->j(LQ3/b;LQ3/f;)LJ3/m;

    move-result-object p0

    return-object p0
.end method

.method public k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V
    .locals 7

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/u4;->c:Lcom/google/android/gms/internal/firebase-auth-api/w4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/w4;->c:Ljava/util/List;

    iget-object v0, p0, LD3/e;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/d4;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/v4;

    iget-object p1, p0, LD3/e;->e:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-static {v4}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object p1, p0, LD3/e;->f:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-static {v5}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v3}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object p1, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v6}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object p0, p0, LD3/e;->h:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;Lcom/google/android/gms/internal/firebase-auth-api/v4;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v2, "/setAccountInfo"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/H4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, p1, v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "No users"

    invoke-interface {v6, p0}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void
.end method

.method public l(Landroid/util/AttributeSet;I)V
    .locals 11

    iget-object v0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lc/a;->D:[I

    const/4 v9, 0x0

    invoke-static {v1, p1, v4, p2, v9}, LJ/r0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[III)LJ/r0;

    move-result-object v1

    iget-object v2, v1, LJ/r0;->d:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Landroid/content/res/TypedArray;

    iget-object v2, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, LJ/Q;->a:Ljava/util/WeakHashMap;

    iget-object v5, v1, LJ/r0;->d:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/content/res/TypedArray;

    const/4 v8, 0x0

    move-object v5, p1

    move v7, p2

    invoke-static/range {v2 .. v8}, LJ/N;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    invoke-virtual {v10, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {v10, v9, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    iget-object p0, p0, LD3/e;->e:Ljava/lang/Object;

    check-cast p0, Lk/s;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lk/s;->a:Lk/D0;

    monitor-enter p1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v10, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p0}, LJ/r0;->f(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {v0, p0}, LJ/I;->q(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 p0, 0x2

    invoke-virtual {v10, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v10, p0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lk/g0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    invoke-static {v0, p0}, LJ/I;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    invoke-virtual {v1}, LJ/r0;->n()V

    return-void

    :goto_1
    invoke-virtual {v1}, LJ/r0;->n()V

    throw p0
.end method

.method public m(LQ3/f;)LJ3/n;
    .locals 0

    iget-object p0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast p0, LJ3/m;

    invoke-interface {p0, p1}, LJ3/m;->m(LQ3/f;)LJ3/n;

    move-result-object p0

    return-object p0
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LD3/e;->q(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, LD3/e;->a()V

    return-void
.end method

.method public o(I)V
    .locals 1

    iget-object p1, p0, LD3/e;->e:Ljava/lang/Object;

    check-cast p1, Lk/s;

    if-eqz p1, :cond_0

    iget-object v0, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lk/s;->a:Lk/D0;

    monitor-enter v0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LD3/e;->q(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, LD3/e;->a()V

    return-void
.end method

.method public p(LI0/a;)V
    .locals 7

    new-instance v0, LE2/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    iget-object v1, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LL0/b;

    if-eqz v1, :cond_3

    iget-object v2, p0, LD3/e;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/messaging/e;

    if-eqz v3, :cond_1

    iget-object v3, p0, LD3/e;->f:Ljava/lang/Object;

    check-cast v3, LI0/b;

    if-eqz v3, :cond_0

    iget-object p0, p0, LD3/e;->h:Ljava/lang/Object;

    check-cast p0, LL0/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LI0/c;->d:LI0/c;

    invoke-static {}, LL0/b;->a()LJ/r0;

    move-result-object v5

    iget-object v6, v1, LL0/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, LJ/r0;->o(Ljava/lang/String;)V

    iput-object v4, v5, LJ/r0;->e:Ljava/lang/Object;

    iget-object v1, v1, LL0/b;->b:[B

    iput-object v1, v5, LJ/r0;->d:Ljava/lang/Object;

    invoke-virtual {v5}, LJ/r0;->b()LL0/b;

    move-result-object v1

    new-instance v4, LJ3/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, LJ3/d;->h:Ljava/lang/Object;

    iget-object v5, p0, LL0/k;->a:LT0/b;

    invoke-virtual {v5}, LT0/b;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, LJ3/d;->f:Ljava/lang/Object;

    iget-object v5, p0, LL0/k;->b:LT0/b;

    invoke-virtual {v5}, LT0/b;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, LJ3/d;->g:Ljava/lang/Object;

    iput-object v2, v4, LJ3/d;->c:Ljava/lang/Object;

    new-instance v2, LL0/f;

    iget-object p1, p1, LI0/a;->a:Ljava/lang/Object;

    check-cast p1, Lr2/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lq1/d;->a:LJ/r0;

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v5, p1, v6}, LJ/r0;->r(Lr2/e;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v2, v3, p1}, LL0/f;-><init>(LI0/b;[B)V

    iput-object v2, v4, LJ3/d;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, v4, LJ3/d;->d:Ljava/lang/Object;

    invoke-virtual {v4}, LJ3/d;->d()LL0/a;

    move-result-object p1

    iget-object p0, p0, LL0/k;->c:LP0/d;

    check-cast p0, LP0/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LP0/a;

    invoke-direct {v2, p0, v1, v0, p1}, LP0/a;-><init>(LP0/c;LL0/b;LE2/a;LL0/a;)V

    iget-object p0, p0, LP0/c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null encoding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transformer"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transportName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transportContext"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, LD3/e;->f:Ljava/lang/Object;

    check-cast v0, Lk/x1;

    if-nez v0, :cond_0

    new-instance v0, Lk/x1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LD3/e;->f:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LD3/e;->f:Ljava/lang/Object;

    check-cast v0, Lk/x1;

    iput-object p1, v0, Lk/x1;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/x1;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, LD3/e;->f:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, LD3/e;->a()V

    return-void
.end method

.method public r(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast v0, Lk/x1;

    if-nez v0, :cond_0

    new-instance v0, Lk/x1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LD3/e;->g:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast v0, Lk/x1;

    iput-object p1, v0, Lk/x1;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/x1;->d:Z

    invoke-virtual {p0}, LD3/e;->a()V

    return-void
.end method

.method public s(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast v0, Lk/x1;

    if-nez v0, :cond_0

    new-instance v0, Lk/x1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LD3/e;->g:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast v0, Lk/x1;

    iput-object p1, v0, Lk/x1;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/x1;->c:Z

    invoke-virtual {p0}, LD3/e;->a()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, LD3/e;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FontRequest {mProviderAuthority: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LD3/e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mProviderPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LD3/e;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mQuery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LD3/e;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCertificates:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LD3/e;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    const-string v4, " ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    const-string v5, " \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-string v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "}mCertificatesArray: 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
