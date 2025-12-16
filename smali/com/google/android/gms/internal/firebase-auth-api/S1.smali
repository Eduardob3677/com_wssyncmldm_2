.class public final Lcom/google/android/gms/internal/firebase-auth-api/S1;
.super Lcom/google/android/gms/internal/firebase-auth-api/m5;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/S1;


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/Z4;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/S1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/S1;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zze:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->d:Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    return-void
.end method

.method public static m()Lcom/google/android/gms/internal/firebase-auth-api/R1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->i()Lcom/google/android/gms/internal/firebase-auth-api/l5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/R1;

    return-object v0
.end method

.method public static o()Lcom/google/android/gms/internal/firebase-auth-api/S1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/S1;

    return-object v0
.end method

.method public static synthetic r(Lcom/google/android/gms/internal/firebase-auth-api/S1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/firebase-auth-api/S1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    return-void
.end method

.method public static t(Lcom/google/android/gms/internal/firebase-auth-api/S1;I)V
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    invoke-static {p1}, LB/f;->o(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzg:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/S1;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/R1;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/S1;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzg"

    const-string p1, "zze"

    const-string v0, "zzf"

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/S1;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z;

    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final n()I
    .locals 2

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzg:I

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const/4 p0, 0x6

    return p0

    :cond_3
    return v0
.end method

.method public final p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;->zze:Ljava/lang/String;

    return-object p0
.end method
