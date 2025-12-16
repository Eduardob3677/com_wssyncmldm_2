.class public final Lcom/google/android/gms/internal/firebase-auth-api/k2;
.super Lcom/google/android/gms/internal/firebase-auth-api/m5;
.source "SourceFile"


# static fields
.field public static final synthetic a:I

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/k2;


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/c;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/k2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/k2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/k2;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/k2;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/k2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k2;->zze:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/y;->f:Lcom/google/android/gms/internal/firebase-auth-api/y;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/k2;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/c;

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
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/k2;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/k2;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/u1;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/k2;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/k2;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/k2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/k2;-><init>()V

    return-object p0

    :cond_3
    const-class p0, Lcom/google/android/gms/internal/firebase-auth-api/V1;

    const-string p1, "zze"

    const-string v0, "zzf"

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/k2;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/k2;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z;

    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
