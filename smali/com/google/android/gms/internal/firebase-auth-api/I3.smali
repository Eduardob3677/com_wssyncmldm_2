.class public final Lcom/google/android/gms/internal/firebase-auth-api/I3;
.super Lc1/k;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/H3;


# static fields
.field public static final z:LA/d;


# instance fields
.field public final x:Landroid/content/Context;

.field public final y:Lcom/google/android/gms/internal/firebase-auth-api/W3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA/d;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, LA/d;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/I3;->z:LA/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LJ3/c;Lcom/google/android/gms/internal/firebase-auth-api/W3;La1/e;La1/f;)V
    .locals 7

    const/16 v3, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lc1/k;-><init>(Landroid/content/Context;Landroid/os/Looper;ILJ3/c;La1/e;La1/f;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/I3;->x:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/I3;->y:Lcom/google/android/gms/internal/firebase-auth-api/W3;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 7

    const-string v0, "\' didn\'t match expected id \'com.google.firebase.auth\'"

    const-string v1, "com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor"

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/I3;->x:Landroid/content/Context;

    const-string v2, "com.google.firebase.auth"

    sget v3, Ll1/a;->a:I

    const-string v3, "DynamiteModule"

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "MODULE_ID"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v5, "MODULE_VERSION"

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Module descriptor id \'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p0, v4

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Failed to load module descriptor class: "

    if-eqz v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Local module descriptor class for com.google.firebase.auth not found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_3
    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v4
.end method

.method public final c(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    if-eqz v1, :cond_1

    move-object p0, v0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/R3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final e()[LZ0/c;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/s;->b:[LZ0/c;

    return-object p0
.end method

.method public final f()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/I3;->y:Lcom/google/android/gms/internal/firebase-auth-api/W3;

    if-eqz p0, :cond_0

    const-string v1, "com.google.firebase.auth.API_KEY"

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/Z3;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.google.firebase.auth.LIBRARY_VERSION"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.firebase.auth.api.gms.service.START"

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/I3;->y:Lcom/google/android/gms/internal/firebase-auth-api/W3;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/W3;->c:Z

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/I3;->z:LA/d;

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, v2, LA/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "Preparing to create service connection to fallback implementation"

    invoke-virtual {v2, v3, v0}, LA/d;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/I3;->x:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    iget-object v0, v2, LA/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "Preparing to create service connection to gms implementation"

    invoke-virtual {v2, v1, p0}, LA/d;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "com.google.android.gms"

    return-object p0
.end method
