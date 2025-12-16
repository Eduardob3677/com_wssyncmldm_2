.class public final Lcom/google/android/gms/internal/firebase-auth-api/N0;
.super Lcom/google/android/gms/internal/firebase-auth-api/m5;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/N0;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/P0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/N0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/N0;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/N0;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/firebase-auth-api/M0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/N0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->i()Lcom/google/android/gms/internal/firebase-auth-api/l5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/M0;

    return-object v0
.end method

.method public static o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/N0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/N0;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->k(Lcom/google/android/gms/internal/firebase-auth-api/m5;Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/N0;

    return-object p0
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/firebase-auth-api/N0;)V
    .locals 1

    const/16 v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zze:I

    return-void
.end method

.method public static synthetic r(Lcom/google/android/gms/internal/firebase-auth-api/N0;Lcom/google/android/gms/internal/firebase-auth-api/P0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/P0;

    return-void
.end method


# virtual methods
.method public final h(I)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/N0;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/M0;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/N0;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/N0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zze"

    const-string p1, "zzf"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/N0;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z;

    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zze:I

    return p0
.end method

.method public final p()Lcom/google/android/gms/internal/firebase-auth-api/P0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/N0;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/P0;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/P0;->o()Lcom/google/android/gms/internal/firebase-auth-api/P0;

    move-result-object p0

    :cond_0
    return-object p0
.end method
