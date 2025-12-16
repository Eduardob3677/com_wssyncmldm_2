.class public final Lcom/google/android/gms/internal/firebase-auth-api/g5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/google/android/gms/internal/firebase-auth-api/g5;

.field public static final b:Lcom/google/android/gms/internal/firebase-auth-api/g5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/g5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/g5;->b:Lcom/google/android/gms/internal/firebase-auth-api/g5;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/firebase-auth-api/g5;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a:Lcom/google/android/gms/internal/firebase-auth-api/g5;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/g5;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a:Lcom/google/android/gms/internal/firebase-auth-api/g5;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/g5;->b:Lcom/google/android/gms/internal/firebase-auth-api/g5;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a:Lcom/google/android/gms/internal/firebase-auth-api/g5;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method
