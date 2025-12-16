.class public final Lcom/google/android/gms/internal/firebase-auth-api/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/e0;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/C0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/C0;->a:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/google/android/gms/internal/firebase-auth-api/T;

    return-object p0
.end method

.method public final b()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/google/android/gms/internal/firebase-auth-api/T;

    return-object p0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/firebase-auth-api/U;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B0;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/B0;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/U;)V

    return-object p0
.end method
