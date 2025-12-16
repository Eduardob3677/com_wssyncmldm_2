.class public final Lb1/q;
.super Ls1/d;
.source "SourceFile"

# interfaces
.implements La1/e;
.implements La1/f;


# static fields
.field public static final h:LV0/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:LW1/a;

.field public final d:Ljava/util/Set;

.field public final e:LJ3/c;

.field public f:Ls1/a;

.field public g:Lb1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr1/b;->a:LV0/b;

    sput-object v0, Lb1/q;->h:LV0/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/Q1;LJ3/c;)V
    .locals 2

    sget-object v0, Lb1/q;->h:LV0/b;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v1, "com.google.android.gms.signin.internal.ISignInCallbacks"

    invoke-virtual {p0, p0, v1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object p1, p0, Lb1/q;->a:Landroid/content/Context;

    iput-object p2, p0, Lb1/q;->b:Landroid/os/Handler;

    iput-object p3, p0, Lb1/q;->e:LJ3/c;

    iget-object p1, p3, LJ3/c;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lb1/q;->d:Ljava/util/Set;

    iput-object v0, p0, Lb1/q;->c:LW1/a;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 0

    iget-object p0, p0, Lb1/q;->f:Ls1/a;

    check-cast p0, Lc1/k;

    invoke-virtual {p0}, Lc1/k;->d()V

    return-void
.end method

.method public final q()V
    .locals 8

    iget-object v0, p0, Lb1/q;->f:Ls1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Ls1/a;->y:LJ3/c;

    iget-object v3, v3, LJ3/c;->d:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "<<default account>>"

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v3, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lc1/k;->b:Landroid/content/Context;

    invoke-static {v4}, LX0/a;->a(Landroid/content/Context;)LX0/a;

    move-result-object v4

    const-string v5, "defaultGoogleSignInAccount"

    invoke-virtual {v4, v5}, LX0/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "googleSignInAccount:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LX0/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_2

    :try_start_2
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    :cond_2
    :goto_1
    move-object v4, v2

    :goto_2
    :try_start_3
    new-instance v5, Lc1/t;

    iget-object v6, v0, Ls1/a;->A:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    invoke-direct {v5, v7, v3, v6, v4}, Lc1/t;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {v0}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ls1/e;

    new-instance v3, Ls1/f;

    invoke-direct {v3, v1, v5}, Ls1/f;-><init>(ILc1/t;)V

    invoke-virtual {v0, v3, p0}, Ls1/e;->f(Ls1/f;Ls1/c;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :goto_3
    const-string v3, "Remote service probably died when signIn is called"

    const-string v4, "SignInClientImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    new-instance v3, Ls1/g;

    new-instance v5, LZ0/a;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v2}, LZ0/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v3, v1, v5, v2}, Ls1/g;-><init>(ILZ0/a;Lc1/u;)V

    new-instance v1, LG/a;

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-direct {v1, p0, v3, v2, v5}, LG/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p0, p0, Lb1/q;->b:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    const-string p0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v4, p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method public final s(LZ0/a;)V
    .locals 0

    iget-object p0, p0, Lb1/q;->g:Lb1/e;

    invoke-virtual {p0, p1}, Lb1/e;->b(LZ0/a;)V

    return-void
.end method
