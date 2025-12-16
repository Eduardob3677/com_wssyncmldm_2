.class public final Lcom/google/android/gms/internal/firebase-auth-api/B1;
.super Lcom/google/android/gms/internal/firebase-auth-api/m5;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/B1;


# instance fields
.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/H1;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/x1;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/B1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/B1;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/B1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-void
.end method

.method public static o()Lcom/google/android/gms/internal/firebase-auth-api/A1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/B1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->i()Lcom/google/android/gms/internal/firebase-auth-api/l5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/A1;

    return-object v0
.end method

.method public static p()Lcom/google/android/gms/internal/firebase-auth-api/B1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/B1;

    return-object v0
.end method

.method public static synthetic r(Lcom/google/android/gms/internal/firebase-auth-api/B1;Lcom/google/android/gms/internal/firebase-auth-api/H1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zze:Lcom/google/android/gms/internal/firebase-auth-api/H1;

    return-void
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/firebase-auth-api/B1;Lcom/google/android/gms/internal/firebase-auth-api/x1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/x1;

    return-void
.end method

.method public static t(Lcom/google/android/gms/internal/firebase-auth-api/B1;I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-static {p1}, LB/f;->l(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzg:I

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
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/B1;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/A1;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/B1;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/B1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzg"

    const-string p1, "zze"

    const-string v0, "zzf"

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/B1;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z;

    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final m()I
    .locals 2

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzg:I

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

.method public final n()Lcom/google/android/gms/internal/firebase-auth-api/x1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/x1;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/x1;->n()Lcom/google/android/gms/internal/firebase-auth-api/x1;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final q()Lcom/google/android/gms/internal/firebase-auth-api/H1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/B1;->zze:Lcom/google/android/gms/internal/firebase-auth-api/H1;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->n()Lcom/google/android/gms/internal/firebase-auth-api/H1;

    move-result-object p0

    :cond_0
    return-object p0
.end method
