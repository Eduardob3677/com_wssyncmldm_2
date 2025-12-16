.class public final LJ3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ3/m;
.implements LN0/b;
.implements Lcom/google/android/gms/internal/firebase-auth-api/d4;
.implements Lcom/google/android/gms/internal/firebase-auth-api/X3;


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LJ3/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LJ3/d;Lr3/e;LQ3/b;Ljava/util/List;Lr3/N;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ3/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ3/c;->e:Ljava/lang/Object;

    iput-object p2, p0, LJ3/c;->g:Ljava/lang/Object;

    iput-object p3, p0, LJ3/c;->h:Ljava/lang/Object;

    iput-object p4, p0, LJ3/c;->i:Ljava/lang/Object;

    iput-object p5, p0, LJ3/c;->j:Ljava/lang/Object;

    iput-object p1, p0, LJ3/c;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LJ3/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LP2/a;LP2/a;LP2/a;LP0/e;LP2/a;LP2/a;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LJ3/c;->c:I

    sget-object v0, LT0/a;->a:Le4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ3/c;->d:Ljava/lang/Object;

    iput-object p2, p0, LJ3/c;->e:Ljava/lang/Object;

    iput-object p3, p0, LJ3/c;->f:Ljava/lang/Object;

    iput-object p4, p0, LJ3/c;->g:Ljava/lang/Object;

    iput-object p5, p0, LJ3/c;->h:Ljava/lang/Object;

    iput-object p6, p0, LJ3/c;->i:Ljava/lang/Object;

    iput-object v0, p0, LJ3/c;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Lo/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LJ3/c;->c:I

    sget-object v0, Lr1/a;->c:Lr1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ3/c;->d:Ljava/lang/Object;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LJ3/c;->e:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p3, p0, LJ3/c;->g:Ljava/lang/Object;

    iput-object p4, p0, LJ3/c;->h:Ljava/lang/Object;

    iput-object v0, p0, LJ3/c;->i:Ljava/lang/Object;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LJ3/c;->f:Ljava/lang/Object;

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;LJ3/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x7

    iput v0, p0, LJ3/c;->c:I

    const-string v0, "c"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "debugName"

    invoke-static {v0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ3/c;->d:Ljava/lang/Object;

    iput-object p2, p0, LJ3/c;->e:Ljava/lang/Object;

    iput-object p4, p0, LJ3/c;->f:Ljava/lang/Object;

    iput-object p5, p0, LJ3/c;->g:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p1, Ld4/i;

    iget-object p2, p1, Ld4/i;->a:Lg4/o;

    new-instance p4, Ld4/x;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Ld4/x;-><init>(LJ3/c;I)V

    check-cast p2, Lg4/l;

    invoke-virtual {p2, p4}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p2

    iput-object p2, p0, LJ3/c;->h:Ljava/lang/Object;

    new-instance p2, Ld4/x;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Ld4/x;-><init>(LJ3/c;I)V

    iget-object p1, p1, Ld4/i;->a:Lg4/o;

    check-cast p1, Lg4/l;

    invoke-virtual {p1, p2}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, LJ3/c;->i:Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, LR2/v;->c:LR2/v;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, LL3/W;

    iget v0, p5, LL3/W;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lf4/u;

    iget-object v2, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-direct {v1, v2, p5, p3}, Lf4/u;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;LL3/W;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p1, p0, LJ3/c;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Boolean;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/y4;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LJ3/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ3/c;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LJ3/c;->e:Ljava/lang/Object;

    iput-object p1, p0, LJ3/c;->f:Ljava/lang/Object;

    iput-object p2, p0, LJ3/c;->g:Ljava/lang/Object;

    iput-object p1, p0, LJ3/c;->h:Ljava/lang/Object;

    iput-object p3, p0, LJ3/c;->i:Ljava/lang/Object;

    iput-object p4, p0, LJ3/c;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/Z3;)V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, LJ3/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LJ3/c;->h:Ljava/lang/Object;

    invoke-static {p2}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p2, p0, LJ3/c;->i:Ljava/lang/Object;

    iput-object p3, p0, LJ3/c;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LJ3/c;->f:Ljava/lang/Object;

    iput-object p1, p0, LJ3/c;->d:Ljava/lang/Object;

    iput-object p1, p0, LJ3/c;->e:Ljava/lang/Object;

    const-string p3, "firebear.secureToken"

    invoke-static {p3}, Lcom/google/android/gms/internal/firebase-auth-api/s;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/l4;->a:Lo/b;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p2, p1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, LB/f;->F(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "https://"

    const-string v0, "securetoken.googleapis.com/v1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Found hermetic configuration for secureToken URL: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "LocalClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    invoke-virtual {p0}, LJ3/c;->t()Lcom/google/android/gms/internal/firebase-auth-api/a4;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/O3;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    iput-object v0, p0, LJ3/c;->f:Ljava/lang/Object;

    :cond_2
    const-string p3, "firebear.identityToolkit"

    invoke-static {p3}, Lcom/google/android/gms/internal/firebase-auth-api/s;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/l4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Found hermetic configuration for identityToolkit URL: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v1, "LocalClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    invoke-virtual {p0}, LJ3/c;->t()Lcom/google/android/gms/internal/firebase-auth-api/a4;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/O3;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    iput-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    :cond_5
    const-string p3, "firebear.identityToolkitV2"

    invoke-static {p3}, Lcom/google/android/gms/internal/firebase-auth-api/s;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/l4;->a:Lo/b;

    monitor-enter v0

    :try_start_2
    invoke-virtual {v0, p2, p1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string p1, "https://"

    const-string p3, "identitytoolkit.googleapis.com/v2/accounts"

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_6
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Found hermetic configuration for identityToolkitV2 URL: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    const-string v0, "LocalClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object p1, p0, LJ3/c;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    if-nez p1, :cond_8

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    invoke-virtual {p0}, LJ3/c;->t()Lcom/google/android/gms/internal/firebase-auth-api/a4;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    iput-object p1, p0, LJ3/c;->e:Ljava/lang/Object;

    :cond_8
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/l4;->b:Lo/b;

    monitor-enter p1

    :try_start_4
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LJ3/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p1, p0, LJ3/c;->d:Ljava/lang/Object;

    const-string p1, "phone"

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p1, p0, LJ3/c;->e:Ljava/lang/Object;

    iput-object p2, p0, LJ3/c;->f:Ljava/lang/Object;

    iput-object p3, p0, LJ3/c;->g:Ljava/lang/Object;

    iput-object p4, p0, LJ3/c;->h:Ljava/lang/Object;

    iput-object p5, p0, LJ3/c;->i:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lh4/z;Lh4/v;)Lh4/z;
    .locals 7

    invoke-static {p0}, Lf1/a;->y(Lh4/v;)Lo3/i;

    move-result-object v0

    invoke-virtual {p0}, Lh4/v;->t()Ls3/h;

    move-result-object v1

    invoke-static {p0}, Lo3/f;->j(Lh4/v;)Lh4/v;

    move-result-object v2

    invoke-static {p0}, Lo3/f;->h(Lh4/v;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Lo3/f;->l(Lh4/v;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, LR2/m;->J0(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh4/N;

    invoke-virtual {v6}, Lh4/N;->b()Lh4/v;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    move-object v4, v5

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lo3/f;->e(Lo3/i;Ls3/h;Lh4/v;Ljava/util/List;Ljava/util/ArrayList;Lh4/v;Z)Lh4/z;

    move-result-object p1

    invoke-virtual {p0}, Lh4/v;->K0()Z

    move-result p0

    invoke-virtual {p1, p0}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public static final l(LL3/Q;LJ3/c;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, LL3/Q;->f:Ljava/util/List;

    const-string v1, "argumentList"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p1, LJ3/c;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v1, Ls2/c;

    invoke-static {p0, v1}, Li3/x;->I0(LL3/Q;Ls2/c;)LL3/Q;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, LJ3/c;->l(LL3/Q;LJ3/c;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, LR2/u;->c:LR2/u;

    :cond_1
    invoke-static {v0, p0}, LR2/m;->Y0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/util/List;Ls3/h;Lh4/J;Lr3/j;)Lh4/G;
    .locals 1

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh4/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ls3/h;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lh4/G;->d:Le/v;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lh4/G;->e:Lh4/G;

    goto :goto_1

    :cond_0
    sget-object p3, Lh4/G;->d:Le/v;

    new-instance v0, Lh4/h;

    invoke-direct {v0, p1}, Lh4/h;-><init>(Ls3/h;)V

    invoke-static {v0}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Le/v;->j(Ljava/util/List;)Lh4/G;

    move-result-object p3

    :goto_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p0, p2}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lh4/G;->d:Le/v;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Le/v;->j(Ljava/util/List;)Lh4/G;

    move-result-object p0

    return-object p0
.end method

.method public static final p(LJ3/c;LL3/Q;I)Lr3/e;
    .locals 3

    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v0, LN3/f;

    invoke-static {v0, p2}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object p2

    new-instance v0, Ld4/x;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ld4/x;-><init>(LJ3/c;I)V

    invoke-static {p1, v0}, Lr4/m;->k(Ljava/lang/Object;Lc3/b;)Lr4/k;

    move-result-object p1

    sget-object v0, Ld4/z;->d:Ld4/z;

    invoke-static {p1, v0}, Lr4/m;->l(Lr4/k;Lc3/b;)Lr4/r;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lr4/r;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v1, p1

    check-cast v1, Lr4/q;

    invoke-virtual {v1}, Lr4/q;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lr4/q;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Ld4/y;->l:Ld4/y;

    invoke-static {p2, p1}, Lr4/m;->k(Ljava/lang/Object;Lc3/b;)Lr4/k;

    move-result-object p1

    invoke-static {p1}, Lr4/m;->h(Lr4/k;)I

    move-result p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p0, Ld4/i;

    iget-object p0, p0, Ld4/i;->l:Lcom/google/firebase/messaging/p;

    invoke-virtual {p0, p2, v0}, Lcom/google/firebase/messaging/p;->v(LQ3/b;Ljava/util/List;)Lr3/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "idToken"

    iget-object v2, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, LJ3/c;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "mfaProvider"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "phoneNumber"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, LJ3/c;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "recaptchaToken"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "safetyNetToken"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object p0, p0, LJ3/c;->j:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    if-eqz p0, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "appSignatureHash"

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/m4;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "autoRetrievalInfo"

    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p0, "phoneEnrollmentInfo"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/d4;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, LJ3/c;->e:Ljava/lang/Object;

    check-cast v1, LJ3/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LJ3/c;->h:Ljava/lang/Object;

    check-cast v2, LQ3/b;

    const-string v3, "annotationClassId"

    invoke-static {v3, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "arguments"

    invoke-static {v3, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Ln3/a;->b:LQ3/b;

    invoke-static {v2, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "value"

    invoke-static {v3}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, LV3/r;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    check-cast v3, LV3/r;

    goto :goto_0

    :cond_1
    move-object v3, v6

    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, LV3/g;->a:Ljava/lang/Object;

    instance-of v5, v3, LV3/p;

    if-eqz v5, :cond_3

    move-object v6, v3

    check-cast v6, LV3/p;

    :cond_3
    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v6, LV3/p;->a:LV3/f;

    iget-object v3, v3, LV3/f;->a:LQ3/b;

    invoke-virtual {v1, v3}, LJ3/d;->j(LQ3/b;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {v1, v2}, LJ3/d;->j(LQ3/b;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    new-instance v1, Ls3/c;

    iget-object v2, p0, LJ3/c;->g:Ljava/lang/Object;

    check-cast v2, Lr3/e;

    invoke-interface {v2}, Lr3/e;->q()Lh4/z;

    move-result-object v2

    iget-object v3, p0, LJ3/c;->j:Ljava/lang/Object;

    check-cast v3, Lr3/N;

    invoke-direct {v1, v2, v0, v3}, Ls3/c;-><init>(Lh4/z;Ljava/util/Map;Lr3/N;)V

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(I)Lr3/Q;
    .locals 2

    iget-object v0, p0, LJ3/c;->j:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/Q;

    if-nez v0, :cond_1

    iget-object p0, p0, LJ3/c;->e:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LJ3/c;->e(I)Lr3/Q;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public f(LL3/Q;Z)Lh4/z;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v5, 0x1

    const/16 v6, 0x40

    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v9, "proto"

    invoke-static {v9, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, LL3/Q;->q()Z

    move-result v9

    const/16 v10, 0x80

    iget-object v11, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    if-eqz v9, :cond_0

    iget v9, v1, LL3/Q;->k:I

    iget-object v12, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v12, LN3/f;

    invoke-static {v12, v9}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object v9

    iget-boolean v9, v9, LQ3/b;->c:Z

    if-eqz v9, :cond_1

    iget-object v9, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v9, Ld4/i;

    iget-object v9, v9, Ld4/i;->g:Ld4/j;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget v9, v1, LL3/Q;->e:I

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_1

    iget v9, v1, LL3/Q;->n:I

    iget-object v12, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v12, LN3/f;

    invoke-static {v12, v9}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object v9

    iget-boolean v9, v9, LQ3/b;->c:Z

    if-eqz v9, :cond_1

    iget-object v9, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v9, Ld4/i;

    iget-object v9, v9, Ld4/i;->g:Ld4/j;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, LL3/Q;->q()Z

    move-result v9

    const/16 v18, 0x0

    if-eqz v9, :cond_2

    iget-object v6, v0, LJ3/c;->h:Ljava/lang/Object;

    check-cast v6, Lg4/j;

    iget v7, v1, LL3/Q;->k:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr3/g;

    if-nez v6, :cond_8

    iget v6, v1, LL3/Q;->k:I

    invoke-static {v0, v1, v6}, LJ3/c;->p(LJ3/c;LL3/Q;I)Lr3/e;

    move-result-object v6

    goto/16 :goto_2

    :cond_2
    iget v9, v1, LL3/Q;->e:I

    and-int/lit8 v12, v9, 0x20

    if-ne v12, v7, :cond_3

    iget v6, v1, LL3/Q;->l:I

    invoke-virtual {v0, v6}, LJ3/c;->e(I)Lr3/Q;

    move-result-object v6

    if-nez v6, :cond_8

    sget-object v6, Lj4/i;->a:Lj4/i;

    sget-object v6, Lj4/h;->q:Lj4/h;

    iget v7, v1, LL3/Q;->l:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, LJ3/c;->g:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lj4/i;->d(Lj4/h;[Ljava/lang/String;)Lj4/g;

    move-result-object v6

    goto/16 :goto_3

    :cond_3
    and-int/lit8 v7, v9, 0x40

    if-ne v7, v6, :cond_7

    iget-object v6, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v6, LN3/f;

    iget v7, v1, LL3/Q;->m:I

    invoke-interface {v6, v7}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, LJ3/c;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v7}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lr3/Q;

    invoke-interface {v10}, Lr3/j;->getName()LQ3/f;

    move-result-object v10

    invoke-virtual {v10}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_5
    move-object/from16 v9, v18

    :goto_1
    move-object v7, v9

    check-cast v7, Lr3/Q;

    if-nez v7, :cond_6

    sget-object v7, Lj4/i;->a:Lj4/i;

    sget-object v7, Lj4/h;->r:Lj4/h;

    iget-object v9, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v9, Lr3/j;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lj4/i;->d(Lj4/h;[Ljava/lang/String;)Lj4/g;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v7

    goto :goto_2

    :cond_7
    and-int/lit16 v6, v9, 0x80

    if-ne v6, v10, :cond_9

    iget-object v6, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v6, Lg4/j;

    iget v7, v1, LL3/Q;->n:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr3/g;

    if-nez v6, :cond_8

    iget v6, v1, LL3/Q;->n:I

    invoke-static {v0, v1, v6}, LJ3/c;->p(LJ3/c;LL3/Q;I)Lr3/e;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Lr3/g;->H()Lh4/J;

    move-result-object v6

    const-string v7, "classifier.typeConstructor"

    invoke-static {v7, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    sget-object v6, Lj4/i;->a:Lj4/i;

    sget-object v6, Lj4/h;->t:Lj4/h;

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, Lj4/i;->d(Lj4/h;[Ljava/lang/String;)Lj4/g;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Lh4/J;->i()Lr3/g;

    move-result-object v7

    invoke-static {v7}, Lj4/i;->f(Lr3/j;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v0, Lj4/i;->a:Lj4/i;

    sget-object v0, Lj4/h;->y:Lj4/h;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sget-object v2, LR2/u;->c:LR2/u;

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v2, v6, v1}, Lj4/i;->e(Lj4/h;Ljava/util/List;Lh4/J;[Ljava/lang/String;)Lj4/f;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v7, Lf4/a;

    iget-object v9, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v9, Ld4/i;

    iget-object v9, v9, Ld4/i;->a:Lg4/o;

    new-instance v10, LB3/c;

    const/4 v12, 0x5

    invoke-direct {v10, v0, v12, v1}, LB3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v7, v9, v10}, Lf4/a;-><init>(Lg4/o;Lc3/a;)V

    iget-object v9, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v9, Ld4/i;

    iget-object v10, v9, Ld4/i;->s:Ljava/util/List;

    iget-object v12, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    move-object v15, v12

    check-cast v15, Lr3/j;

    invoke-static {v10, v7, v6, v15}, LJ3/c;->n(Ljava/util/List;Ls3/h;Lh4/J;Lr3/j;)Lh4/G;

    move-result-object v10

    invoke-static {v1, v0}, LJ3/c;->l(LL3/Q;LJ3/c;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v14, v8

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    iget-object v2, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v2, Ls2/c;

    const-string v8, "typeTable"

    if-eqz v16, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v14, 0x1

    if-ltz v14, :cond_14

    move-object/from16 v3, v16

    check-cast v3, LL3/O;

    invoke-interface {v6}, Lh4/J;->k()Ljava/util/List;

    move-result-object v4

    const-string v5, "constructor.parameters"

    invoke-static {v5, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v14, v4}, LR2/m;->P0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/Q;

    iget-object v5, v3, LL3/O;->e:LL3/N;

    sget-object v14, LL3/N;->g:LL3/N;

    if-ne v5, v14, :cond_c

    if-nez v4, :cond_b

    new-instance v2, Lh4/D;

    iget-object v3, v9, Ld4/i;->b:Lr3/x;

    invoke-interface {v3}, Lr3/x;->g()Lo3/i;

    move-result-object v3

    invoke-direct {v2, v3}, Lh4/D;-><init>(Lo3/i;)V

    goto :goto_5

    :cond_b
    new-instance v2, Lh4/E;

    invoke-direct {v2, v4}, Lh4/E;-><init>(Lr3/Q;)V

    :goto_5
    const/4 v5, 0x2

    const/4 v8, 0x4

    goto/16 :goto_8

    :cond_c
    const-string v4, "typeArgumentProto.projection"

    invoke-static {v4, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v14, 0x1

    if-eq v4, v14, :cond_f

    const/4 v14, 0x2

    if-eq v4, v14, :cond_e

    const/4 v14, 0x3

    if-eq v4, v14, :cond_d

    new-instance v0, LA0/c;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v14, 0x1

    goto :goto_6

    :cond_f
    const/4 v14, 0x3

    goto :goto_6

    :cond_10
    const/4 v14, 0x2

    :goto_6
    invoke-static {v8, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v4, v3, LL3/O;->d:I

    const/4 v5, 0x2

    and-int/lit8 v8, v4, 0x2

    if-ne v8, v5, :cond_11

    iget-object v2, v3, LL3/O;->f:LL3/Q;

    const/4 v8, 0x4

    goto :goto_7

    :cond_11
    const/4 v8, 0x4

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_12

    iget v4, v3, LL3/O;->g:I

    invoke-virtual {v2, v4}, Ls2/c;->l(I)LL3/Q;

    move-result-object v2

    goto :goto_7

    :cond_12
    move-object/from16 v2, v18

    :goto_7
    if-nez v2, :cond_13

    new-instance v2, Lh4/O;

    sget-object v4, Lj4/h;->D:Lj4/h;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lj4/i;->c(Lj4/h;[Ljava/lang/String;)Lj4/f;

    move-result-object v3

    invoke-direct {v2, v3}, Lh4/O;-><init>(Lh4/v;)V

    goto :goto_8

    :cond_13
    new-instance v3, Lh4/O;

    invoke-virtual {v0, v2}, LJ3/c;->o(LL3/Q;)Lh4/v;

    move-result-object v2

    invoke-direct {v3, v14, v2}, Lh4/O;-><init>(ILh4/v;)V

    move-object v2, v3

    :goto_8
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, v17

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_14
    invoke-static {}, LR2/n;->B0()V

    throw v18

    :cond_15
    invoke-static {v13}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v6}, Lh4/J;->i()Lr3/g;

    move-result-object v4

    if-eqz p2, :cond_1a

    instance-of v5, v4, Lf4/t;

    if-eqz v5, :cond_1a

    move-object v14, v4

    check-cast v14, Lf4/t;

    const-string v4, "<this>"

    invoke-static {v4, v14}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v19, Lh4/d;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    iget-object v4, v14, Lf4/t;->i:Lu3/e;

    invoke-virtual {v4}, Lu3/e;->k()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr3/Q;

    invoke-interface {v10}, Lr3/Q;->a()Lr3/Q;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_16
    invoke-static {v5, v3}, LR2/m;->l1(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, LR2/z;->C1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v16

    new-instance v20, Lcom/google/firebase/messaging/p;

    const/16 v17, 0xf

    move-object/from16 v12, v20

    move-object/from16 v13, v18

    move-object v4, v15

    move-object v15, v3

    invoke-direct/range {v12 .. v17}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v3, Lh4/G;->d:Le/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lh4/G;->e:Lh4/G;

    const-string v5, "attributes"

    invoke-static {v5, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v22, 0x0

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v24}, Lh4/d;->h(Lcom/google/firebase/messaging/p;Lh4/G;ZIZ)Lh4/z;

    move-result-object v3

    iget-object v5, v9, Ld4/i;->s:Ljava/util/List;

    invoke-virtual {v3}, Lh4/v;->t()Ls3/h;

    move-result-object v10

    invoke-static {v7, v10}, LR2/m;->W0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_17

    sget-object v7, Ls3/g;->a:Ls3/f;

    goto :goto_a

    :cond_17
    new-instance v10, Ls3/i;

    const/4 v12, 0x0

    invoke-direct {v10, v12, v7}, Ls3/i;-><init>(ILjava/lang/Object;)V

    move-object v7, v10

    :goto_a
    invoke-static {v5, v7, v6, v4}, LJ3/c;->n(Ljava/util/List;Ls3/h;Lh4/J;Lr3/j;)Lh4/G;

    move-result-object v4

    invoke-static {v3}, Lh4/X;->f(Lh4/v;)Z

    move-result v5

    if-nez v5, :cond_19

    iget-boolean v5, v1, LL3/Q;->g:Z

    if-eqz v5, :cond_18

    goto :goto_b

    :cond_18
    const/4 v5, 0x0

    goto :goto_c

    :cond_19
    :goto_b
    const/4 v5, 0x1

    :goto_c
    invoke-virtual {v3, v5}, Lh4/z;->Q0(Z)Lh4/z;

    move-result-object v3

    invoke-virtual {v3, v4}, Lh4/z;->R0(Lh4/G;)Lh4/z;

    move-result-object v3

    goto/16 :goto_15

    :cond_1a
    move-object v4, v15

    sget-object v5, LN3/e;->a:LN3/b;

    iget v7, v1, LL3/Q;->s:I

    invoke-virtual {v5, v7}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-boolean v5, v1, LL3/Q;->g:Z

    invoke-interface {v6}, Lh4/J;->k()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v7, v12

    if-eqz v7, :cond_1d

    const/4 v12, 0x1

    if-eq v7, v12, :cond_1c

    :cond_1b
    move-object/from16 v4, v18

    goto/16 :goto_13

    :cond_1c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    if-ltz v4, :cond_1b

    invoke-interface {v6}, Lh4/J;->g()Lo3/i;

    move-result-object v7

    invoke-virtual {v7, v4}, Lo3/i;->v(I)Lr3/e;

    move-result-object v4

    invoke-interface {v4}, Lr3/g;->H()Lh4/J;

    move-result-object v4

    const-string v7, "functionTypeConstructor.\u2026on(arity).typeConstructor"

    invoke-static {v7, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10, v4, v3, v5}, Lh4/d;->r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object v4

    goto/16 :goto_13

    :cond_1d
    invoke-static {v10, v6, v3, v5}, Lh4/d;->r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object v5

    invoke-virtual {v5}, Lh4/v;->J0()Lh4/J;

    move-result-object v7

    invoke-interface {v7}, Lh4/J;->i()Lr3/g;

    move-result-object v7

    if-eqz v7, :cond_1e

    invoke-static {v7}, Lo3/f;->i(Lr3/g;)Lp3/e;

    move-result-object v7

    goto :goto_d

    :cond_1e
    move-object/from16 v7, v18

    :goto_d
    sget-object v10, Lp3/e;->f:Lp3/e;

    if-ne v7, v10, :cond_1b

    invoke-static {v5}, Lo3/f;->l(Lh4/v;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, LR2/m;->V0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh4/N;

    if-eqz v7, :cond_25

    invoke-virtual {v7}, Lh4/N;->b()Lh4/v;

    move-result-object v7

    if-nez v7, :cond_1f

    goto :goto_11

    :cond_1f
    invoke-virtual {v7}, Lh4/v;->J0()Lh4/J;

    move-result-object v10

    invoke-interface {v10}, Lh4/J;->i()Lr3/g;

    move-result-object v10

    if-eqz v10, :cond_20

    invoke-static {v10}, LX3/f;->g(Lr3/j;)LQ3/c;

    move-result-object v10

    goto :goto_e

    :cond_20
    move-object/from16 v10, v18

    :goto_e
    invoke-virtual {v7}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_26

    sget-object v12, Lo3/n;->f:LQ3/c;

    invoke-static {v10, v12}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    sget-object v12, Ld4/A;->a:LQ3/c;

    invoke-static {v10, v12}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    goto :goto_12

    :cond_21
    invoke-virtual {v7}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh4/N;

    invoke-virtual {v7}, Lh4/N;->b()Lh4/v;

    move-result-object v7

    const-string v10, "continuationArgumentType.arguments.single().type"

    invoke-static {v10, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v10, v4, Lr3/b;

    if-eqz v10, :cond_22

    move-object v15, v4

    check-cast v15, Lr3/b;

    goto :goto_f

    :cond_22
    move-object/from16 v15, v18

    :goto_f
    if-eqz v15, :cond_23

    invoke-static {v15}, LX3/f;->c(Lr3/j;)LQ3/c;

    move-result-object v4

    goto :goto_10

    :cond_23
    move-object/from16 v4, v18

    :goto_10
    sget-object v10, Ld4/w;->a:LQ3/c;

    invoke-static {v4, v10}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {v5, v7}, LJ3/c;->c(Lh4/z;Lh4/v;)Lh4/z;

    move-result-object v5

    goto :goto_12

    :cond_24
    invoke-static {v5, v7}, LJ3/c;->c(Lh4/z;Lh4/v;)Lh4/z;

    move-result-object v5

    goto :goto_12

    :cond_25
    :goto_11
    move-object/from16 v5, v18

    :cond_26
    :goto_12
    move-object v4, v5

    :goto_13
    if-nez v4, :cond_27

    sget-object v4, Lj4/i;->a:Lj4/i;

    sget-object v4, Lj4/h;->s:Lj4/h;

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/String;

    invoke-static {v4, v3, v6, v7}, Lj4/i;->e(Lj4/h;Ljava/util/List;Lh4/J;[Ljava/lang/String;)Lj4/f;

    move-result-object v3

    goto :goto_15

    :cond_27
    :goto_14
    move-object v3, v4

    goto :goto_15

    :cond_28
    iget-boolean v4, v1, LL3/Q;->g:Z

    invoke-static {v10, v6, v3, v4}, Lh4/d;->r(Lh4/G;Lh4/J;Ljava/util/List;Z)Lh4/z;

    move-result-object v3

    sget-object v4, LN3/e;->b:LN3/b;

    iget v5, v1, LL3/Q;->s:I

    invoke-virtual {v4, v5}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lh4/d;->p(Lh4/Z;Z)Lh4/m;

    move-result-object v4

    if-eqz v4, :cond_29

    goto :goto_14

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null DefinitelyNotNullType for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_15
    invoke-static {v8, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v4, v1, LL3/Q;->e:I

    const/16 v5, 0x400

    and-int/lit16 v6, v4, 0x400

    if-ne v6, v5, :cond_2b

    iget-object v2, v1, LL3/Q;->q:LL3/Q;

    goto :goto_16

    :cond_2b
    const/16 v5, 0x800

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2c

    iget v4, v1, LL3/Q;->r:I

    invoke-virtual {v2, v4}, Ls2/c;->l(I)LL3/Q;

    move-result-object v18

    :cond_2c
    move-object/from16 v2, v18

    :goto_16
    if-eqz v2, :cond_2d

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, LJ3/c;->f(LL3/Q;Z)Lh4/z;

    move-result-object v0

    invoke-static {v3, v0}, Lh4/c;->z(Lh4/z;Lh4/z;)Lh4/z;

    move-result-object v3

    :cond_2d
    invoke-virtual/range {p1 .. p1}, LL3/Q;->q()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, v1, LL3/Q;->k:I

    iget-object v1, v11, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v1, LN3/f;

    invoke-static {v1, v0}, LL2/b;->l(LN3/f;I)LQ3/b;

    iget-object v0, v9, Ld4/i;->r:Lt3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "computedType"

    invoke-static {v0, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    return-object v3
.end method

.method public g(LQ3/f;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, LJ3/d;

    invoke-static {v0, p1, p2}, LJ3/d;->b(LJ3/d;LQ3/f;Ljava/lang/Object;)LV3/g;

    move-result-object p2

    iget-object p0, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, LJ3/c;->e:Ljava/lang/Object;

    check-cast v0, LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LM0/f;

    iget-object v0, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast v0, LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LR0/c;

    iget-object v0, p0, LJ3/c;->g:Ljava/lang/Object;

    check-cast v0, LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LQ0/d;

    iget-object v0, p0, LJ3/c;->h:Ljava/lang/Object;

    check-cast v0, LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LS0/c;

    iget-object p0, p0, LJ3/c;->j:Ljava/lang/Object;

    check-cast p0, LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, LT0/b;

    new-instance p0, LQ0/j;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, LQ0/j;-><init>(Landroid/content/Context;LM0/f;LR0/c;LQ0/d;Ljava/util/concurrent/Executor;LS0/c;LT0/b;)V

    return-object p0
.end method

.method public h(LQ3/f;LQ3/b;LQ3/f;)V
    .locals 1

    new-instance v0, LV3/i;

    invoke-direct {v0, p2, p3}, LV3/i;-><init>(LQ3/b;LQ3/f;)V

    iget-object p0, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i(LQ3/f;LV3/f;)V
    .locals 2

    new-instance v0, LV3/r;

    new-instance v1, LV3/p;

    invoke-direct {v1, p2}, LV3/p;-><init>(LV3/f;)V

    invoke-direct {v0, v1}, LV3/g;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(LQ3/b;LQ3/f;)LJ3/m;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lr3/N;->a:Lr3/M;

    iget-object v2, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v2, LJ3/d;

    invoke-virtual {v2, p1, v1, v0}, LJ3/d;->k(LQ3/b;Lr3/N;Ljava/util/List;)LJ3/c;

    move-result-object p1

    new-instance v1, LD3/e;

    invoke-direct {v1, p1, p0, p2, v0}, LD3/e;-><init>(LJ3/c;LJ3/c;LQ3/f;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/u4;->c:Lcom/google/android/gms/internal/firebase-auth-api/w4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/w4;->c:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->h:Lcom/google/android/gms/internal/firebase-auth-api/B4;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/B4;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, LJ3/c;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v4, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/A4;

    iget-object v5, v5, Lcom/google/android/gms/internal/firebase-auth-api/A4;->f:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/A4;

    iput-object v4, v1, Lcom/google/android/gms/internal/firebase-auth-api/A4;->g:Ljava/lang/String;

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/A4;

    iput-object v4, v1, Lcom/google/android/gms/internal/firebase-auth-api/A4;->g:Ljava/lang/String;

    :cond_4
    :goto_2
    iget-object v1, p0, LJ3/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->m:Z

    iget-object v1, p0, LJ3/c;->h:Ljava/lang/Object;

    check-cast v1, LY1/r;

    iput-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;->n:LY1/r;

    iget-object v1, p0, LJ3/c;->j:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    invoke-interface {v2, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->c(Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/v4;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    const-string v1, "RemoteException when sending get token and account info user response"

    invoke-virtual {p0, v1, p1, v0}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_5
    :goto_4
    iget-object p0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/d4;

    const-string p1, "No users."

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void
.end method

.method public m(LQ3/f;)LJ3/n;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/p;

    iget-object v1, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v1, LJ3/d;

    invoke-direct {v0, v1, p1, p0}, Lcom/google/firebase/messaging/p;-><init>(LJ3/d;LQ3/f;LJ3/c;)V

    return-object v0
.end method

.method public o(LL3/Q;)Lh4/v;
    .locals 8

    const-string v0, "proto"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p1, LL3/Q;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v1, LN3/f;

    iget v3, p1, LL3/Q;->h:I

    invoke-interface {v1, v3}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v2}, LJ3/c;->f(LL3/Q;Z)Lh4/z;

    move-result-object v3

    const-string v4, "typeTable"

    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast v5, Ls2/c;

    invoke-static {v4, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v4, p1, LL3/Q;->e:I

    and-int/lit8 v6, v4, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    iget-object v4, p1, LL3/Q;->i:LL3/Q;

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_2

    iget v4, p1, LL3/Q;->j:I

    invoke-virtual {v5, v4}, Ls2/c;->l(I)LL3/Q;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v2}, LJ3/c;->f(LL3/Q;Z)Lh4/z;

    move-result-object p0

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->j:Ld4/l;

    invoke-interface {v0, p1, v1, v3, p0}, Ld4/l;->c(LL3/Q;Ljava/lang/String;Lh4/z;Lh4/z;)Lh4/v;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1, v2}, LJ3/c;->f(LL3/Q;Z)Lh4/z;

    move-result-object p0

    return-object p0
.end method

.method public q(LQ3/f;LV3/g;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public r(Lcom/google/android/gms/internal/firebase-auth-api/m4;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V
    .locals 2

    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v1, "/getAccountInfo"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/u4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void
.end method

.method public s(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V
    .locals 2

    iget-object v0, p1, LJ3/d;->g:Ljava/lang/Object;

    check-cast v0, LY1/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ3/c;->t()Lcom/google/android/gms/internal/firebase-auth-api/a4;

    move-result-object v0

    iget-object v1, p1, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, LY1/a;

    iget-object v1, v1, LY1/a;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;->e:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v1, "/getOobConfirmationCode"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/x4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void
.end method

.method public t()Lcom/google/android/gms/internal/firebase-auth-api/a4;
    .locals 3

    iget-object v0, p0, LJ3/c;->j:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    iget-object v1, p0, LJ3/c;->g:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Z3;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/Z3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-static {v2, v1}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LJ3/c;->h:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, LJ3/c;->j:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, LJ3/c;->j:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LJ3/c;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LJ3/c;->e:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ". Child of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
