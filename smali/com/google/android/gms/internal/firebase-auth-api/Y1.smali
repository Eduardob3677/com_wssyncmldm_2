.class public final Lcom/google/android/gms/internal/firebase-auth-api/Y1;
.super Lcom/google/android/gms/internal/firebase-auth-api/m5;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/Y1;


# instance fields
.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/S1;

.field private zzf:I

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-void
.end method

.method public static p()Lcom/google/android/gms/internal/firebase-auth-api/X1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->i()Lcom/google/android/gms/internal/firebase-auth-api/l5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/X1;

    return-object v0
.end method

.method public static synthetic r(Lcom/google/android/gms/internal/firebase-auth-api/Y1;Lcom/google/android/gms/internal/firebase-auth-api/S1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zze:Lcom/google/android/gms/internal/firebase-auth-api/S1;

    return-void
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/firebase-auth-api/Y1;I)V
    .locals 0

    invoke-static {p1}, LB/f;->b(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzh:I

    return-void
.end method

.method public static t(Lcom/google/android/gms/internal/firebase-auth-api/Y1;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, LB/f;->m(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzf:I

    return-void
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/firebase-auth-api/Y1;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzg:I

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
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/X1;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string v0, "zzg"

    const-string v1, "zzh"

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z;

    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

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

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzg:I

    return p0
.end method

.method public final n()Lcom/google/android/gms/internal/firebase-auth-api/S1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zze:Lcom/google/android/gms/internal/firebase-auth-api/S1;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->o()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final o()I
    .locals 2

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzf:I

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    return v0
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zzh:I

    invoke-static {p0}, LB/f;->d(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    :cond_0
    return p0
.end method

.method public final v()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->zze:Lcom/google/android/gms/internal/firebase-auth-api/S1;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
