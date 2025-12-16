.class public final Lcom/google/android/gms/internal/firebase-auth-api/v1;
.super Lcom/google/android/gms/internal/firebase-auth-api/m5;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/v1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/v1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/v1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/v1;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/v1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-void
.end method

.method public static m()Lcom/google/android/gms/internal/firebase-auth-api/v1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/v1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/v1;

    return-object v0
.end method

.method public static n(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/v1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/v1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/v1;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->k(Lcom/google/android/gms/internal/firebase-auth-api/m5;Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/v1;

    return-object p0
.end method


# virtual methods
.method public final h(I)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    const/4 v0, 0x0

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/v1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/v1;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/u1;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/v1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/v1;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/v1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/v1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/v1;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/z;

    const-string v1, "\u0000\u0000"

    invoke-direct {p1, p0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/z;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
