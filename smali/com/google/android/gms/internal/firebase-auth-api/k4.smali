.class public final Lcom/google/android/gms/internal/firebase-auth-api/k4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LA/d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA/d;

    const-string v1, "SmsRetrieverHelper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, LA/d;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->a:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/firebase-auth-api/k4;Ljava/lang/String;)V
    .locals 10

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->I(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->I(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->e:Ljava/lang/String;

    new-instance v9, LY1/j;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, LY1/j;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->p(LY1/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    const-string v3, "RemoteException when sending verification completed response."

    invoke-virtual {v0, v3, v1, v2}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->h:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/16 v2, 0x9

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0xb

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Package: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -- Hash: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, v0, LA/d;->a:I

    if-gt v4, v2, :cond_0

    iget-object v2, v0, LA/d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p0, v3}, LA/d;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v2, "NoSuchAlgorithm: "

    if-eqz p1, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, LA/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->a:Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lj1/a;->a(Landroid/content/Context;)LL0/c;

    move-result-object p0

    iget-object p0, p0, LL0/c;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v3, 0x8000000

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Hash generation failed."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, LA/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to find package to obtain hash."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, LA/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/firebase-auth-api/G3;Ljava/lang/String;)V
    .locals 10

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->g:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a(Ljava/lang/String;)V

    :cond_1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->h:Z

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->e:Ljava/lang/String;

    new-instance p2, LY1/j;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, LY1/j;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->p(LY1/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "RemoteException when sending verification completed response."

    invoke-virtual {v1, v3, p2, v2}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->i:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->d:Ljava/lang/String;

    :try_start_1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->n(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "RemoteException when sending auto retrieval timeout response."

    invoke-virtual {v1, p2, p0, p1}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;JZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    invoke-direct {v1, p3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/j4;-><init>(JZ)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c(Lcom/google/android/gms/internal/firebase-auth-api/G3;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    iget-wide p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/j4;->a:J

    const-wide/16 v0, 0x0

    cmp-long p5, p3, v0

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    if-gtz p5, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    iget-object p1, v1, LA/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string p2, "Timeout of 0 specified; SmsRetriever will not start."

    invoke-virtual {v1, p2, p0}, LA/d;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p5, Lcom/google/android/gms/internal/firebase-auth-api/g4;

    invoke-direct {p5, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/g4;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/k4;Ljava/lang/String;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, p5, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/j4;->f:Ljava/util/concurrent/ScheduledFuture;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/j4;->c:Z

    if-nez p2, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    iget-object p1, v1, LA/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string p2, "SMS auto-retrieval unavailable; SmsRetriever will not start."

    invoke-virtual {v1, p2, p0}, LA/d;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/i4;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/i4;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/k4;Ljava/lang/String;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lm1/d;

    sget-object p2, La1/c;->b:La1/c;

    sget-object p3, LV0/a;->h:LA3/D;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p3, p4, p2}, La1/d;-><init>(Landroid/content/Context;LA3/D;Lcom/google/android/gms/internal/firebase-auth-api/W3;La1/c;)V

    invoke-static {}, LR3/m;->c()LR3/m;

    move-result-object p0

    new-instance p2, LP1/e;

    invoke-direct {p2, p1}, LP1/e;-><init>(Lm1/d;)V

    iput-object p2, p0, LR3/m;->b:Ljava/lang/Object;

    sget-object p2, Lm1/a;->a:LZ0/c;

    filled-new-array {p2}, [LZ0/c;

    move-result-object p2

    iput-object p2, p0, LR3/m;->c:Ljava/lang/Object;

    invoke-virtual {p0}, LR3/m;->b()LR3/m;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, La1/d;->b(ILR3/m;)Lu1/n;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/M;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/M;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lu1/j;->a:LL0/i;

    invoke-virtual {p0, p2, p1}, Lu1/n;->b(Ljava/util/concurrent/Executor;Lu1/d;)Lu1/n;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->h:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->I(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    iget-object v2, v1, LA/d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "Timed out waiting for SMS."

    invoke-virtual {v1, v3, v0}, LA/d;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v3, p1, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    const-string v4, "RemoteException when sending auto retrieval timeout response."

    invoke-virtual {v1, v4, v2, v3}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->i:Z

    :cond_2
    return-void
.end method
