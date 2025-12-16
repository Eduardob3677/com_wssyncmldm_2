.class public final Lcom/google/android/gms/internal/firebase-auth-api/Z1;
.super Lcom/google/android/gms/internal/firebase-auth-api/m5;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/Z1;


# instance fields
.field private zze:I

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

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/y;->f:Lcom/google/android/gms/internal/firebase-auth-api/y;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/c;

    return-void
.end method

.method public static o()Lcom/google/android/gms/internal/firebase-auth-api/W1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->i()Lcom/google/android/gms/internal/firebase-auth-api/l5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/W1;

    return-object v0
.end method

.method public static q([BLcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/Z1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->l(Lcom/google/android/gms/internal/firebase-auth-api/m5;[BLcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    return-object p0
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/firebase-auth-api/Z1;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zze:I

    return-void
.end method

.method public static t(Lcom/google/android/gms/internal/firebase-auth-api/Z1;Lcom/google/android/gms/internal/firebase-auth-api/Y1;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V4;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/V4;->c:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c;->d(I)Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/c;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/c;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/W1;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;-><init>()V

    return-object p0

    :cond_3
    const-class p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    const-string p1, "zze"

    const-string v0, "zzf"

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z;

    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

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

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/c;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zze:I

    return p0
.end method

.method public final p(I)Lcom/google/android/gms/internal/firebase-auth-api/Y1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/c;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    return-object p0
.end method

.method public final r()Lcom/google/android/gms/internal/firebase-auth-api/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/c;

    return-object p0
.end method
