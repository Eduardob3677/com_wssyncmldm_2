.class public final Lcom/google/android/gms/internal/firebase-auth-api/c2;
.super Lcom/google/android/gms/internal/firebase-auth-api/m5;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/c2;


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/c2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/c2;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zze:Ljava/lang/String;

    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/firebase-auth-api/b2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->i()Lcom/google/android/gms/internal/firebase-auth-api/l5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/b2;

    return-object v0
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/firebase-auth-api/c2;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/firebase-auth-api/c2;I)V
    .locals 0

    invoke-static {p1}, LB/f;->b(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zzh:I

    return-void
.end method

.method public static q(Lcom/google/android/gms/internal/firebase-auth-api/c2;I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-static {p1}, LB/f;->m(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zzf:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic r(Lcom/google/android/gms/internal/firebase-auth-api/c2;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zzg:I

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
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/c2;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/b2;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c2;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string v0, "zzg"

    const-string v1, "zzh"

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/c2;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z;

    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

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

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c2;->zzg:I

    return p0
.end method
