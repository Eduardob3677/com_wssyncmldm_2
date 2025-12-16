.class public final Lcom/google/android/gms/internal/firebase-auth-api/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/J0;
.implements Lcom/google/android/gms/internal/firebase-auth-api/d4;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;Lcom/google/android/gms/internal/firebase-auth-api/v4;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->c:I

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/x2;->e:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    const-string v1, "AES/ECB/NoPadding"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->w([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->w([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I[B)[B
    .locals 8

    const/16 v0, 0x10

    if-gt p1, v0, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/x2;->e:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    const-string v2, "AES/ECB/NoPadding"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v2, p2

    int-to-double v4, v2

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v4, v3, 0x10

    const/4 v5, 0x0

    if-ne v4, v2, :cond_0

    add-int/lit8 v2, v3, -0x1

    mul-int/2addr v2, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {p2, v2, v5, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->M([BII[BI)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v3, -0x1

    mul-int/2addr v4, v0

    invoke-static {p2, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    array-length v4, v2

    if-ge v4, v0, :cond_2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const/16 v6, -0x80

    aput-byte v6, v2, v4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->J([B[B)[B

    move-result-object p0

    :goto_0
    new-array v2, v0, [B

    move v4, v5

    :goto_1
    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_1

    mul-int/lit8 v6, v4, 0x10

    invoke-static {v2, v5, v6, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->M([BII[BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->J([B[B)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x must be smaller than a block."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "outputLength too large, max is 16 bytes"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/d4;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_2
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_3
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_4
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/d4;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void

    :pswitch_6
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    check-cast v1, LY1/o;

    iget-boolean v2, v1, LY1/o;->e:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    if-nez v2, :cond_0

    iget-object v2, v1, LY1/o;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, v1, LY1/o;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v3, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    const-string v4, "DISPLAY_NAME"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-boolean v2, v1, LY1/o;->f:Z

    if-nez v2, :cond_3

    iget-object v2, v1, LY1/o;->g:Landroid/net/Uri;

    if-eqz v2, :cond_5

    :cond_3
    iget-object v1, v1, LY1/o;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v3, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    const-string v2, "PHOTO_URL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->h:Ljava/lang/Object;

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-static {v1, v2, p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->s(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/G4;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/u4;->c:Lcom/google/android/gms/internal/firebase-auth-api/w4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/w4;->c:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/s3;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/v4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    invoke-interface {v2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->c(Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/v4;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    const-string v1, "RemoteException when sending get token and account info user response"

    invoke-virtual {v0, v1, p0, p1}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/d4;

    const-string p1, "No users"

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    check-cast v0, La2/m;

    iput-object p1, v0, La2/m;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p1, LJ3/c;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LJ3/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v2, "/mfaEnrollment:finalize"

    iget-object p1, p1, LJ3/c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/s4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/u4;->c:Lcom/google/android/gms/internal/firebase-auth-api/w4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/w4;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/d4;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/v4;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v0, v5, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->d:Ljava/lang/String;

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->k:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-static {v4}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v5}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v3}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v6}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->f:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;Lcom/google/android/gms/internal/firebase-auth-api/v4;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v2, "/setAccountInfo"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/H4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, p1, v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto :goto_5

    :cond_9
    :goto_4
    const-string p0, "No users."

    invoke-interface {v6, p0}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->q:Z

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p1, LJ3/c;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/U;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/d4;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LJ3/c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v2, "/verifyAssertion"

    iget-object p1, p1, LJ3/c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/O4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void

    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    check-cast v0, Lb1/e;

    iput-object p1, v0, Lb1/e;->h:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p1, LJ3/c;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/r3;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/r3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/z2;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LJ3/c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v2, "/verifyPhoneNumber"

    iget-object p1, p1, LJ3/c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/R4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void

    :pswitch_5
    invoke-static {p1}, LB/f;->B(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "EMAIL"

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;

    if-eqz v0, :cond_a

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->d:Ljava/lang/String;

    goto :goto_6

    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->d:Ljava/lang/String;

    :cond_b
    :goto_6
    const-string v0, "DISPLAY_NAME"

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->f:Ljava/lang/String;

    goto :goto_7

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->f:Ljava/lang/String;

    :cond_d
    :goto_7
    const-string v0, "PHOTO_URL"

    invoke-static {v0}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->g:Ljava/lang/String;

    goto :goto_8

    :cond_e
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->g:Ljava/lang/String;

    :cond_f
    :goto_8
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "redacted"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-nez p1, :cond_10

    move-object p1, v2

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/v4;->i:Ljava/lang/String;

    :cond_11
    throw v2

    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/q4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->d:Ljava/lang/Object;

    check-cast v1, LY1/d;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q4;-><init>(LY1/d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->i(Lcom/google/android/gms/internal/firebase-auth-api/q4;Lcom/google/android/gms/internal/firebase-auth-api/G3;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
