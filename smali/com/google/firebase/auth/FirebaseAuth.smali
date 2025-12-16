.class public abstract Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/a;


# instance fields
.field public final a:LW1/g;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final e:Lcom/google/firebase/messaging/p;

.field public f:La2/s;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/String;

.field public final j:LA3/D;

.field public final k:La2/k;

.field public l:Ls2/c;

.field public final m:La2/i;


# direct methods
.method public constructor <init>(LW1/g;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, LW1/g;->a()V

    iget-object v2, p1, LW1/g;->c:LW1/j;

    iget-object v2, v2, LW1/j;->a:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/W3;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LW1/g;->a()V

    iget-object v2, p1, LW1/g;->a:Landroid/content/Context;

    new-instance v4, Lcom/google/firebase/messaging/p;

    invoke-direct {v4, v2, v3}, Lcom/google/firebase/messaging/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/W3;)V

    new-instance v2, LA3/D;

    invoke-virtual {p1}, LW1/g;->a()V

    iget-object v3, p1, LW1/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, LW1/g;->f()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-direct {v2, v3, v6, v5}, LA3/D;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sget-object v3, La2/k;->b:La2/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Ljava/lang/Object;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    sget-object v5, La2/i;->d:La2/i;

    iput-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:La2/i;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:LW1/g;

    iput-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/firebase/messaging/p;

    iput-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:LA3/D;

    invoke-static {v3}, Lc1/D;->e(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:La2/k;

    const-string p1, "type"

    iget-object v3, v2, LA3/D;->d:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v4, "com.google.firebase.auth.FIREBASE_USER"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :catch_0
    :cond_0
    move-object p1, v5

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v4}, LA3/D;->S0(Lorg/json/JSONObject;)La2/s;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:LA3/D;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, La2/s;->d:La2/q;

    iget-object p1, p1, La2/q;->c:Ljava/lang/String;

    const-string v3, "com.google.firebase.auth.GET_TOKEN_RESPONSE."

    invoke-static {v3, p1}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, v2, LA3/D;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/y4;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v5

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    invoke-static {p0, v2, p1, v0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->d(Lcom/google/firebase/auth/FirebaseAuth;La2/s;Lcom/google/android/gms/internal/firebase-auth-api/y4;ZZ)V

    :cond_3
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:La2/k;

    iget-object p1, p1, La2/k;->a:La2/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:LW1/g;

    invoke-virtual {p1}, LW1/g;->a()V

    iget-object p1, p1, LW1/g;->a:Landroid/content/Context;

    const-string v2, "com.google.firebase.auth.internal.ProcessDeathHelper"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "firebaseAppName"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:LW1/g;

    invoke-virtual {v3}, LW1/g;->a()V

    iget-object v3, v3, LW1/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_c

    :cond_4
    const-string v2, "verifyAssertionRequest"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1d

    const-string v2, "verifyAssertionRequest"

    const-string v6, ""

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/N4;->CREATOR:Landroid/os/Parcelable$Creator;

    if-nez v2, :cond_5

    move-object v2, v5

    goto :goto_2

    :cond_5
    const/16 v7, 0xa

    invoke-static {v2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    :goto_2
    invoke-static {v6}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v2, v0, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {v6, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/b;

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/N4;

    const-string v6, "operation"

    const-string v7, ""

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tenantId"

    invoke-interface {p1, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "firebaseUserUid"

    const-string v9, ""

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "timestamp"

    invoke-interface {p1, v9, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    if-eqz v7, :cond_6

    invoke-static {v7}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iput-object v7, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v7, v2, Lcom/google/android/gms/internal/firebase-auth-api/N4;->p:Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x5df2262

    const/4 v7, 0x2

    if-eq v3, v4, :cond_9

    const v4, 0xa6e6490

    if-eq v3, v4, :cond_8

    const v4, 0x56745691

    if-eq v3, v4, :cond_7

    goto :goto_4

    :cond_7
    const-string v3, "com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v0

    goto :goto_5

    :cond_8
    const-string v3, "com.google.firebase.auth.internal.NONGMSCORE_LINK"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    goto :goto_5

    :cond_9
    const-string v3, "com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v7

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v3, -0x1

    :goto_5
    const/16 v4, 0x42b0

    if-eqz v3, :cond_17

    if-eq v3, v1, :cond_11

    if-eq v3, v7, :cond_b

    goto/16 :goto_a

    :cond_b
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    iget-object v3, v3, La2/s;->d:La2/q;

    iget-object v3, v3, La2/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    invoke-static {v2}, LY1/r;->e(Lcom/google/android/gms/internal/firebase-auth-api/N4;)LY1/r;

    move-result-object v2

    invoke-static {v3}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, LY1/r;->d()LY1/c;

    move-result-object v2

    instance-of v6, v2, LY1/d;

    iget-object v7, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:LW1/g;

    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/firebase/messaging/p;

    if-eqz v6, :cond_f

    check-cast v2, LY1/d;

    iget-object v6, v2, LY1/d;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v9, "password"

    if-nez v6, :cond_c

    move-object v6, v9

    goto :goto_6

    :cond_c
    const-string v6, "emailLink"

    :goto_6
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v4, v2, LY1/d;->d:Ljava/lang/String;

    invoke-static {v4}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, La2/s;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, LY1/t;

    check-cast p0, La2/r;

    invoke-direct {v6, p0, v1}, LY1/t;-><init>(Lcom/google/firebase/auth/FirebaseAuth;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;

    iget-object v1, v2, LY1/d;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/C3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d(LW1/g;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iput-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    iput-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    invoke-virtual {v8, p0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto/16 :goto_a

    :cond_d
    iget-object v6, v2, LY1/d;->e:Ljava/lang/String;

    invoke-static {v6}, Lc1/D;->c(Ljava/lang/String;)V

    sget v9, LY1/b;->c:I

    invoke-static {v6}, Lc1/D;->c(Ljava/lang/String;)V

    :try_start_3
    new-instance v9, LY1/b;

    invoke-direct {v9, v6}, LY1/b;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-object v9, v5

    :goto_7
    if-eqz v9, :cond_e

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    iget-object v9, v9, LY1/b;->b:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    new-instance p0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a(Lcom/google/android/gms/common/api/Status;)LW1/h;

    move-result-object p0

    invoke-static {p0}, Lp0/a;->i(Ljava/lang/Exception;)Lu1/n;

    goto/16 :goto_a

    :cond_e
    new-instance v4, LY1/t;

    check-cast p0, La2/r;

    invoke-direct {v4, p0, v1}, LY1/t;-><init>(Lcom/google/firebase/auth/FirebaseAuth;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B3;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/B3;-><init>(LY1/d;I)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d(LW1/g;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iput-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    iput-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    invoke-virtual {v8, p0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto/16 :goto_a

    :cond_f
    instance-of v4, v2, LY1/j;

    if-eqz v4, :cond_10

    check-cast v2, LY1/j;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    new-instance v5, LY1/t;

    check-cast p0, La2/r;

    invoke-direct {v5, p0, v1}, LY1/t;-><init>(Lcom/google/firebase/auth/FirebaseAuth;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/f4;->a:Lo/b;

    invoke-virtual {p0}, Lo/k;->clear()V

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/D3;

    invoke-direct {p0, v2, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/D3;-><init>(LY1/j;Ljava/lang/String;I)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d(LW1/g;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iput-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    iput-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    invoke-virtual {v8, p0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto/16 :goto_a

    :cond_10
    invoke-virtual {v3}, La2/s;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v5, LY1/t;

    check-cast p0, La2/r;

    invoke-direct {v5, p0, v1}, LY1/t;-><init>(Lcom/google/firebase/auth/FirebaseAuth;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/A3;

    invoke-direct {p0, v2, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/A3;-><init>(LY1/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d(LW1/g;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iput-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    iput-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    invoke-virtual {v8, p0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto/16 :goto_a

    :cond_11
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    iget-object v3, v3, La2/s;->d:La2/q;

    iget-object v3, v3, La2/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    invoke-static {v2}, LY1/r;->e(Lcom/google/android/gms/internal/firebase-auth-api/N4;)LY1/r;

    move-result-object v2

    invoke-static {v3}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, LY1/r;->d()LY1/c;

    move-result-object v2

    new-instance v4, LY1/t;

    move-object v6, p0

    check-cast v6, La2/r;

    invoke-direct {v4, v6, v1}, LY1/t;-><init>(Lcom/google/firebase/auth/FirebaseAuth;I)V

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/firebase/messaging/p;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:LW1/g;

    invoke-static {p0}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v7, v3, La2/s;->h:Ljava/util/List;

    if-eqz v7, :cond_13

    move-object v8, v2

    check-cast v8, LY1/r;

    iget-object v8, v8, LY1/r;->c:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_8

    :cond_12
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x4277

    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a(Lcom/google/android/gms/common/api/Status;)LW1/h;

    move-result-object p0

    invoke-static {p0}, Lp0/a;->i(Ljava/lang/Exception;)Lu1/n;

    goto/16 :goto_a

    :cond_13
    :goto_8
    instance-of v5, v2, LY1/d;

    if-eqz v5, :cond_15

    check-cast v2, LY1/d;

    iget-object v5, v2, LY1/d;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-nez v5, :cond_14

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/z3;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/z3;-><init>(LY1/d;I)V

    iput-object p0, v1, Lcom/google/android/gms/internal/firebase-auth-api/c4;->c:LW1/g;

    iput-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iput-object v4, v1, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    iput-object v4, v1, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    invoke-virtual {v6, v1}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto/16 :goto_a

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z3;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z3;-><init>(LY1/d;I)V

    iput-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->c:LW1/g;

    iput-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iput-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    iput-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    invoke-virtual {v6, v0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto/16 :goto_a

    :cond_15
    instance-of v0, v2, LY1/j;

    if-eqz v0, :cond_16

    check-cast v2, LY1/j;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/f4;->a:Lo/b;

    invoke-virtual {v0}, Lo/k;->clear()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y3;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/y3;-><init>(LY1/j;)V

    iput-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->c:LW1/g;

    iput-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iput-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    iput-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    invoke-virtual {v6, v0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto/16 :goto_a

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y3;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/y3;-><init>(LY1/c;)V

    iput-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->c:LW1/g;

    iput-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iput-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    iput-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    invoke-virtual {v6, v0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto/16 :goto_a

    :cond_17
    invoke-static {v2}, LY1/r;->e(Lcom/google/android/gms/internal/firebase-auth-api/N4;)LY1/r;

    move-result-object v0

    invoke-virtual {v0}, LY1/r;->d()LY1/c;

    move-result-object v0

    instance-of v2, v0, LY1/d;

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:LW1/g;

    iget-object v6, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/firebase/messaging/p;

    if-eqz v2, :cond_1a

    check-cast v0, LY1/d;

    iget-object v2, v0, LY1/d;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-nez v2, :cond_18

    iget-object v2, v0, LY1/d;->d:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    new-instance v5, LY1/u;

    check-cast p0, La2/r;

    invoke-direct {v5, p0}, LY1/u;-><init>(La2/r;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;

    iget-object v0, v0, LY1/d;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/C3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d(LW1/g;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    invoke-virtual {v6, p0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto/16 :goto_a

    :cond_18
    iget-object v2, v0, LY1/d;->e:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    sget v7, LY1/b;->c:I

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    :try_start_4
    new-instance v7, LY1/b;

    invoke-direct {v7, v2}, LY1/b;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-object v7, v5

    :goto_9
    if-eqz v7, :cond_19

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    iget-object v7, v7, LY1/b;->b:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    new-instance p0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a(Lcom/google/android/gms/common/api/Status;)LW1/h;

    move-result-object p0

    invoke-static {p0}, Lp0/a;->i(Ljava/lang/Exception;)Lu1/n;

    goto :goto_a

    :cond_19
    new-instance v2, LY1/u;

    check-cast p0, La2/r;

    invoke-direct {v2, p0}, LY1/u;-><init>(La2/r;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B3;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/B3;-><init>(LY1/d;I)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d(LW1/g;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    invoke-virtual {v6, p0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto :goto_a

    :cond_1a
    instance-of v2, v0, LY1/j;

    if-eqz v2, :cond_1b

    check-cast v0, LY1/j;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    new-instance v4, LY1/u;

    check-cast p0, La2/r;

    invoke-direct {v4, p0}, LY1/u;-><init>(La2/r;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/f4;->a:Lo/b;

    invoke-virtual {p0}, Lo/k;->clear()V

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/D3;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/D3;-><init>(LY1/j;Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d(LW1/g;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    invoke-virtual {v6, p0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    goto :goto_a

    :cond_1b
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    new-instance v4, LY1/u;

    check-cast p0, La2/r;

    invoke-direct {v4, p0}, LY1/u;-><init>(La2/r;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/A3;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/A3;-><init>(LY1/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d(LW1/g;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    invoke-virtual {v6, p0}, Lcom/google/firebase/messaging/p;->P(Lcom/google/android/gms/internal/firebase-auth-api/c4;)Lu1/n;

    :cond_1c
    :goto_a
    invoke-static {p1}, La2/g;->a(Landroid/content/SharedPreferences;)V

    goto :goto_c

    :cond_1d
    const-string p0, "recaptchaToken"

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "recaptchaToken"

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "operation"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xccd86fc

    if-eq v1, v2, :cond_1e

    goto :goto_b

    :cond_1e
    const-string v1, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p0}, Lp0/a;->j(Ljava/lang/Object;)Lu1/n;

    :cond_1f
    :goto_b
    invoke-static {p1}, La2/g;->a(Landroid/content/SharedPreferences;)V

    goto :goto_c

    :cond_20
    const-string p0, "statusCode"

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "statusCode"

    const/16 v0, 0x42a6

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "statusMessage"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    const-string p0, "timestamp"

    invoke-interface {p1, p0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    invoke-static {p1}, La2/g;->a(Landroid/content/SharedPreferences;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a(Lcom/google/android/gms/common/api/Status;)LW1/h;

    move-result-object p0

    invoke-static {p0}, Lp0/a;->i(Ljava/lang/Exception;)Lu1/n;

    :cond_21
    :goto_c
    return-void
.end method

.method public static b(Lcom/google/firebase/auth/FirebaseAuth;La2/s;)V
    .locals 3

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    iget-object p1, p1, La2/s;->d:La2/q;

    iget-object p1, p1, La2/q;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2f

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Notifying auth state listeners about user ( "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Notifying auth state listeners about a sign-out event."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:La2/i;

    new-instance v0, LY1/s;

    invoke-direct {v0, p0}, LY1/s;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p1, v0}, La2/i;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/google/firebase/auth/FirebaseAuth;La2/s;)V
    .locals 4

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    iget-object v1, p1, La2/s;->d:La2/q;

    iget-object v1, v1, La2/q;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2d

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notifying id token listeners about user ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Notifying id token listeners about a sign-out event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    new-instance v0, Lp2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lp2/b;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:La2/i;

    new-instance v1, LY1/s;

    invoke-direct {v1, p0, v0}, LY1/s;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lp2/b;)V

    invoke-virtual {p1, v1}, La2/i;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Lcom/google/firebase/auth/FirebaseAuth;La2/s;Lcom/google/android/gms/internal/firebase-auth-api/y4;ZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v6, v1, La2/s;->d:La2/q;

    iget-object v6, v6, La2/q;->c:Ljava/lang/String;

    iget-object v3, v3, La2/s;->d:La2/q;

    iget-object v3, v3, La2/q;->c:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_2

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    if-nez v6, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    iget-object v6, v6, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v6, v6, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v3, :cond_4

    if-nez v6, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    xor-int/2addr v5, v3

    move v3, v5

    move v5, v6

    :goto_3
    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    if-nez v6, :cond_5

    iput-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    goto :goto_5

    :cond_5
    iget-object v7, v1, La2/s;->g:Ljava/util/List;

    invoke-virtual {v6, v7}, La2/s;->f(Ljava/util/List;)La2/s;

    invoke-virtual/range {p1 .. p1}, La2/s;->e()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v7, v6, La2/s;->j:Ljava/lang/Boolean;

    :cond_6
    iget-object v6, v1, La2/s;->n:La2/f;

    if-eqz v6, :cond_7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v6, La2/f;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LY1/k;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    invoke-virtual {v6, v7}, La2/s;->g(Ljava/util/ArrayList;)V

    :goto_5
    if-eqz p3, :cond_11

    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->j:LA3/D;

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, La2/s;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_10

    :try_start_0
    const-string v9, "cachedTokenState"

    iget-object v10, v7, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "applicationName"

    iget-object v10, v7, La2/s;->e:Ljava/lang/String;

    invoke-static {v10}, LW1/g;->e(Ljava/lang/String;)LW1/g;

    move-result-object v10

    invoke-virtual {v10}, LW1/g;->a()V

    iget-object v10, v10, LW1/g;->b:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "type"

    const-string v10, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v9, v7, La2/s;->g:Ljava/util/List;

    if-eqz v9, :cond_a

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    iget-object v10, v7, La2/s;->g:Ljava/util/List;

    move v11, v4

    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La2/q;

    invoke-virtual {v12}, La2/q;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_9
    const-string v10, "userInfos"

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v9, "anonymous"

    invoke-virtual {v7}, La2/s;->e()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v9, "version"

    const-string v10, "2"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v9, v7, La2/s;->k:La2/t;

    if-eqz v9, :cond_b

    const-string v10, "userMetadata"

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v12, "lastSignInTimestamp"

    iget-wide v13, v9, La2/t;->c:J

    invoke-virtual {v11, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v12, "creationTimestamp"

    iget-wide v13, v9, La2/t;->d:J

    invoke-virtual {v11, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    :try_start_2
    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v7, v7, La2/s;->n:La2/f;

    if-eqz v7, :cond_c

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v7, La2/f;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LY1/k;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move v10, v4

    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_e

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LY1/k;

    invoke-virtual {v11}, LY1/k;->d()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    const-string v9, "userMultiFactorInfo"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :goto_9
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v6, LA3/D;->e:Ljava/lang/Object;

    check-cast v2, LA/d;

    iget-object v3, v2, LA/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "Failed to turn object into JSON"

    invoke-virtual {v2, v4, v1}, LA/d;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/F2;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    const/4 v4, 0x0

    :goto_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v6, v6, LA3/D;->d:Ljava/lang/Object;

    check-cast v6, Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "com.google.firebase.auth.FIREBASE_USER"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_11
    if-eqz v5, :cond_13

    iget-object v4, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    if-eqz v4, :cond_12

    iput-object v2, v4, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    :cond_12
    invoke-static {p0, v4}, Lcom/google/firebase/auth/FirebaseAuth;->c(Lcom/google/firebase/auth/FirebaseAuth;La2/s;)V

    :cond_13
    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    invoke-static {p0, v3}, Lcom/google/firebase/auth/FirebaseAuth;->b(Lcom/google/firebase/auth/FirebaseAuth;La2/s;)V

    :cond_14
    if-eqz p3, :cond_15

    iget-object v3, v0, Lcom/google/firebase/auth/FirebaseAuth;->j:LA3/D;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, LA3/D;->d:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v1, v1, La2/s;->d:La2/q;

    iget-object v1, v1, La2/q;->c:Ljava/lang/String;

    const-string v4, "com.google.firebase.auth.GET_TOKEN_RESPONSE."

    invoke-static {v4, v1}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_15
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    if-eqz v1, :cond_1a

    iget-object v2, v0, Lcom/google/firebase/auth/FirebaseAuth;->l:Ls2/c;

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/google/firebase/auth/FirebaseAuth;->a:LW1/g;

    invoke-static {v2}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v3, Ls2/c;

    invoke-virtual {v2}, LW1/g;->a()V

    new-instance v4, La2/c;

    invoke-direct {v4, v2}, La2/c;-><init>(LW1/g;)V

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Ls2/c;->c:Ljava/lang/Object;

    iget-object v2, v2, LW1/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-static {v2}, Lb1/c;->b(Landroid/app/Application;)V

    sget-object v2, Lb1/c;->g:Lb1/c;

    new-instance v4, La2/h;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, La2/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Lb1/c;->a(Lb1/b;)V

    iput-object v3, v0, Lcom/google/firebase/auth/FirebaseAuth;->l:Ls2/c;

    :cond_16
    iget-object v0, v0, Lcom/google/firebase/auth/FirebaseAuth;->l:Ls2/c;

    iget-object v1, v1, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_17

    goto :goto_c

    :cond_17
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->e:Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_18

    move-wide v5, v3

    goto :goto_b

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_b
    cmp-long v2, v5, v3

    if-gtz v2, :cond_19

    const-wide/16 v5, 0xe10

    :cond_19
    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, La2/c;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v5, v3

    add-long/2addr v5, v1

    iput-wide v5, v0, La2/c;->a:J

    const-wide/16 v1, -0x1

    iput-wide v1, v0, La2/c;->b:J

    :cond_1a
    :goto_c
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 2

    invoke-static {}, LW1/g;->d()LW1/g;

    move-result-object v0

    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, v1}, LW1/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public static getInstance(LW1/g;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0, v0}, LW1/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:LA3/D;

    invoke-static {v0}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    iget-object v0, v0, LA3/D;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, La2/s;->d:La2/q;

    iget-object v1, v1, La2/q;->c:Ljava/lang/String;

    const-string v3, "com.google.firebase.auth.GET_TOKEN_RESPONSE."

    invoke-static {v3, v1}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:La2/s;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.FIREBASE_USER"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->c(Lcom/google/firebase/auth/FirebaseAuth;La2/s;)V

    invoke-static {p0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->b(Lcom/google/firebase/auth/FirebaseAuth;La2/s;)V

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Ls2/c;

    if-eqz p0, :cond_1

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, La2/c;

    iget-object v0, p0, La2/c;->c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    iget-object p0, p0, La2/c;->d:LG/a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
