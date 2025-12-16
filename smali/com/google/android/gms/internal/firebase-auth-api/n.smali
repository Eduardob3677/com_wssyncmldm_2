.class public final Lcom/google/android/gms/internal/firebase-auth-api/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/P;
.implements Lcom/google/android/gms/internal/firebase-auth-api/d4;
.implements Lb1/k;


# static fields
.field public static final e:Lcom/google/android/gms/internal/firebase-auth-api/k5;

.field public static final synthetic f:I


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/k5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/k5;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->e:Lcom/google/android/gms/internal/firebase-auth-api/k5;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/m;

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/n;->e:Lcom/google/android/gms/internal/firebase-auth-api/k5;

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/firebase-auth-api/r;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/k5;->b:Lcom/google/android/gms/internal/firebase-auth-api/k5;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/m;-><init>([Lcom/google/android/gms/internal/firebase-auth-api/r;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LJ3/d;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LJ3/d;->c:Ljava/lang/Object;

    iget-object p1, p1, LJ3/d;->g:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/Y;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/f5;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/f5;->d:Lcom/google/android/gms/internal/firebase-auth-api/n;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/firebase-auth-api/n;
    .locals 4

    const/4 v0, 0x1

    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/C4;->a:I

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/T3;

    const-string v2, "[.-]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/T3;-><init>(Ljava/util/regex/Pattern;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/T3;->c:Ljava/util/regex/Pattern;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/n;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x2

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The pattern may not match the empty string: %s"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/G4;)V
    .locals 9

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p3}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v0, p3, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    new-instance v8, LD3/e;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, LD3/e;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/G4;)V

    invoke-virtual {v0, v1, v8}, LJ3/c;->r(Lcom/google/android/gms/internal/firebase-auth-api/m4;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    return-void
.end method

.method public static final x(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/Q;)Lcom/google/android/gms/internal/firebase-auth-api/n;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->p()[B

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/J1;->n([BLcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/J1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/J1;->o()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v0

    const-string v1, "empty keyset"

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/J1;->o()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {p1, p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Q;->a([B[B)[B

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->q([BLcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->m()I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 p1, 0x4

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->i0(IJ)V

    return-void
.end method

.method public B(IF)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->g0(II)V

    return-void
.end method

.method public C(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V
    .locals 1

    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/U4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->o0(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;->d:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/A;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->o0(II)V

    return-void
.end method

.method public D(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->k0(II)V

    return-void
.end method

.method public E(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->r0(IJ)V

    return-void
.end method

.method public F(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/U4;

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->m0(ILcom/google/android/gms/internal/firebase-auth-api/U4;Lcom/google/android/gms/internal/firebase-auth-api/A;)V

    return-void
.end method

.method public G(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->g0(II)V

    return-void
.end method

.method public H(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->i0(IJ)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/E3;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/T3;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/T3;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(Ljava/util/regex/Matcher;)V

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/b;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/b;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public c(La1/b;Lu1/i;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/H3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/D3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/D3;->o:Lcom/google/android/gms/internal/firebase-auth-api/f3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->t(Lcom/google/android/gms/internal/firebase-auth-api/f3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/B3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/B3;->o:Lcom/google/android/gms/internal/firebase-auth-api/e3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->b(Lcom/google/android/gms/internal/firebase-auth-api/e3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;->o:Lcom/google/android/gms/internal/firebase-auth-api/d3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->j(Lcom/google/android/gms/internal/firebase-auth-api/d3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/A3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/A3;->o:Lcom/google/android/gms/internal/firebase-auth-api/b3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->o(Lcom/google/android/gms/internal/firebase-auth-api/b3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/D3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/D3;->o:Lcom/google/android/gms/internal/firebase-auth-api/f3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->t(Lcom/google/android/gms/internal/firebase-auth-api/f3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;->o:Lcom/google/android/gms/internal/firebase-auth-api/d3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->j(Lcom/google/android/gms/internal/firebase-auth-api/d3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/B3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/B3;->o:Lcom/google/android/gms/internal/firebase-auth-api/e3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->b(Lcom/google/android/gms/internal/firebase-auth-api/e3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/A3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/A3;->o:Lcom/google/android/gms/internal/firebase-auth-api/b3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->o(Lcom/google/android/gms/internal/firebase-auth-api/b3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/e3;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;->o:LY1/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LY1/d;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v1, LY1/d;->g:Z

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/e3;-><init>(LY1/d;)V

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->b(Lcom/google/android/gms/internal/firebase-auth-api/e3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/U2;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iget-object v0, v0, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->o:Ld1/a;

    check-cast v1, LY1/j;

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/U2;-><init>(LY1/j;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->x(Lcom/google/android/gms/internal/firebase-auth-api/U2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/T2;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iget-object v0, v0, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->o:Ld1/a;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/N4;

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/T2;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/N4;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->g(Lcom/google/android/gms/internal/firebase-auth-api/T2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_a
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/S2;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;->o:LY1/d;

    iget-object v1, v0, LY1/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iget-object v2, v2, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, LY1/d;->d:Ljava/lang/String;

    invoke-direct {p2, v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/S2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->k(Lcom/google/android/gms/internal/firebase-auth-api/S2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    :pswitch_b
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->m:Lcom/google/android/gms/internal/firebase-auth-api/U;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    invoke-virtual {p1}, Lc1/k;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U3;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->o:Ld1/a;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/Q2;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b:Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/U3;->r(Lcom/google/android/gms/internal/firebase-auth-api/Q2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(II)V
    .locals 1

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->p0(II)V

    return-void
.end method

.method public e(IJ)V
    .locals 3

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->r0(IJ)V

    return-void
.end method

.method public f(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->p0(II)V

    return-void
.end method

.method public g(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->r0(IJ)V

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V
    .locals 2

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/y4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/y4;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->c:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/r3;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/r3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    iget-object p2, p0, LJ3/c;->f:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v1, "/token"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, v0, p1, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void
.end method

.method public i(Lcom/google/android/gms/internal/firebase-auth-api/q4;Lcom/google/android/gms/internal/firebase-auth-api/G3;)V
    .locals 2

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v1, "/emailLinkSignin"

    iget-object p0, p0, LJ3/c;->i:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/r4;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void
.end method

.method public j()Lcom/google/android/gms/internal/firebase-auth-api/n;
    .locals 9

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->o()Lcom/google/android/gms/internal/firebase-auth-api/W1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->r()Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->n()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->n()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->g(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/U;

    move-result-object v7

    instance-of v8, v7, Lcom/google/android/gms/internal/firebase-auth-api/f0;

    if-eqz v8, :cond_5

    check-cast v7, Lcom/google/android/gms/internal/firebase-auth-api/f0;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/D1;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/D1;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->y(Lcom/google/android/gms/internal/firebase-auth-api/D1;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/D1;->p()Lcom/google/android/gms/internal/firebase-auth-api/F1;

    move-result-object v4

    iget-object v5, v7, Lcom/google/android/gms/internal/firebase-auth-api/f0;->f:Lcom/google/android/gms/internal/firebase-auth-api/X;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/X;->s(Lcom/google/android/gms/internal/firebase-auth-api/U4;)V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->m()Lcom/google/android/gms/internal/firebase-auth-api/R1;

    move-result-object v5

    const-string v7, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    iget-boolean v8, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v8, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->r(Lcom/google/android/gms/internal/firebase-auth-api/S1;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->b()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v4

    iget-boolean v7, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v7, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v7, Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->s(Lcom/google/android/gms/internal/firebase-auth-api/S1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    iget-boolean v4, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_2
    iget-object v4, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/S1;

    const/4 v7, 0x4

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->t(Lcom/google/android/gms/internal/firebase-auth-api/S1;I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/S1;
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v7

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->g(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/U;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/firebase-auth-api/U;->e(Lcom/google/android/gms/internal/firebase-auth-api/Z4;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->p()Lcom/google/android/gms/internal/firebase-auth-api/X1;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    iget-boolean v2, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_3
    iget-object v2, v5, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->r(Lcom/google/android/gms/internal/firebase-auth-api/Y1;Lcom/google/android/gms/internal/firebase-auth-api/S1;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->t(Lcom/google/android/gms/internal/firebase-auth-api/Z1;Lcom/google/android/gms/internal/firebase-auth-api/Y1;)V

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized proto of type "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "manager for key type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a PrivateKeyManager"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "The keyset contains a non-private key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->n()I

    move-result p0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->s(Lcom/google/android/gms/internal/firebase-auth-api/Z1;I)V

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    return-object p0

    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "cleartext keyset is not available"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, LB/f;->B(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-static {p1}, LB/f;->B(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public l(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->e0(IZ)V

    return-void
.end method

.method public m(Lcom/google/android/gms/internal/firebase-auth-api/J1;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->c()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->j([B)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences$Editor;

    const-string v0, "GenericIdpKeyset"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to write to SharedPreferences"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(Lcom/google/android/gms/internal/firebase-auth-api/Z1;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->c()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->j([B)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    const-string p1, "GenericIdpKeyset"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to write to SharedPreferences"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast v0, Ljava/io/OutputStream;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->d()I

    move-result p0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/f5;->e:Ljava/util/logging/Logger;

    const/16 v1, 0x1000

    if-le p0, v1, :cond_1

    move p0, v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/e5;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/e5;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->a(Lcom/google/android/gms/internal/firebase-auth-api/f5;)V

    iget p0, v1, Lcom/google/android/gms/internal/firebase-auth-api/e5;->i:I

    if-lez p0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/e5;->v0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public p()[B
    .locals 6

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences;

    const-string v0, "GenericIdpKeyset"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int v3, v2, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-eq v3, v5, :cond_0

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input is not hexadecimal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a string of even length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "can\'t read keyset; the pref value GenericIdpKeyset does not exist"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/io/CharConversionException;

    const-string v0, "can\'t read keyset; the pref value GenericIdpKeyset is not a valid hex string"

    invoke-direct {p0, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/P;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/P;->a(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/C;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/C;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public r(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->f0(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V

    return-void
.end method

.method public t()Ljava/lang/Object;
    .locals 16

    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/T;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/e0;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/e0;->a()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-string v4, "No wrapper found for "

    if-nez v1, :cond_2

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget v5, Lcom/google/android/gms/internal/firebase-auth-api/k0;->a:I

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->n()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->r()Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move v11, v0

    move v9, v8

    move v10, v9

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eqz v12, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->o()I

    move-result v15

    if-ne v15, v14, :cond_3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->v()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->q()I

    move-result v14

    if-eq v14, v0, :cond_8

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->o()I

    move-result v14

    if-eq v14, v0, :cond_7

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->m()I

    move-result v14

    if-ne v14, v6, :cond_5

    if-nez v10, :cond_4

    move v10, v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "keyset contains multiple primary keys"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->n()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->n()I

    move-result v12

    if-eq v12, v13, :cond_6

    move v12, v8

    goto :goto_4

    :cond_6
    move v12, v0

    :goto_4
    and-int/2addr v11, v12

    add-int/2addr v9, v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "key %d has unknown status"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "key %d has unknown prefix"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "key %d has no key data"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz v9, :cond_1d

    if-nez v10, :cond_c

    if-eqz v11, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "keyset doesn\'t contain a valid primary key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_5
    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/U;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->r()Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->o()I

    move-result v10

    if-ne v10, v14, :cond_d

    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->n()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->q()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v10

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->g(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/U;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/firebase-auth-api/U;->e(Lcom/google/android/gms/internal/firebase-auth-api/Z4;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->o()I

    move-result v11

    if-ne v11, v14, :cond_18

    new-instance v11, Lcom/google/android/gms/internal/firebase-auth-api/c0;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->q()I

    move-result v12

    invoke-static {v12}, Lk/Q0;->f(I)I

    move-result v12

    const/4 v15, 0x5

    if-eq v12, v0, :cond_11

    if-eq v12, v14, :cond_10

    const/4 v3, 0x3

    if-eq v12, v3, :cond_f

    if-ne v12, v13, :cond_e

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown output prefix type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/s;->a:[B

    goto :goto_8

    :cond_10
    :goto_7
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->m()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_8

    :cond_11
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->m()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    :goto_8
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->o()I

    move-result v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->q()I

    move-result v15

    invoke-direct {v11, v10, v3, v12, v15}, Lcom/google/android/gms/internal/firebase-auth-api/c0;-><init>(Ljava/lang/Object;[BII)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/google/android/gms/internal/firebase-auth-api/d0;

    iget-object v12, v11, Lcom/google/android/gms/internal/firebase-auth-api/c0;->b:[B

    if-nez v12, :cond_12

    const/4 v15, 0x0

    goto :goto_9

    :cond_12
    array-length v15, v12

    invoke-static {v12, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    :goto_9
    invoke-direct {v10, v15}, Lcom/google/android/gms/internal/firebase-auth-api/d0;-><init>([B)V

    iget-object v15, v6, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v15, v10, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->m()I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->n()I

    move-result v3

    if-ne v0, v3, :cond_15

    iget v0, v11, Lcom/google/android/gms/internal/firebase-auth-api/c0;->c:I

    if-ne v0, v14, :cond_17

    if-nez v12, :cond_14

    const/4 v0, 0x0

    goto :goto_a

    :cond_14
    array-length v0, v12

    invoke-static {v12, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_a
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/firebase-auth-api/U;->f([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the primary entry cannot be set to an entry which is not held by this primitive set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the primary entry has to be ENABLED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "only ENABLED key is allowed"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/j0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/e0;

    iget-object v1, v6, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_1a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e0;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/e0;->c(Lcom/google/android/gms/internal/firebase-auth-api/U;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v2, Ljava/security/GeneralSecurityException;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e0;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2c

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Wrong input primitive class, expected "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", got "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "keyset must contain at least one ENABLED key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/k0;->a(Lcom/google/android/gms/internal/firebase-auth-api/Z1;)Lcom/google/android/gms/internal/firebase-auth-api/d2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public u(ID)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->i0(IJ)V

    return-void
.end method

.method public v(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/Q;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->c()[B

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Q;->b([B[B)[B

    move-result-object v0

    :try_start_0
    new-array v2, v1, [B

    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Q;->a([B[B)[B

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->q([BLcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/J1;->m()Lcom/google/android/gms/internal/firebase-auth-api/I1;

    move-result-object p2

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v0

    iget-boolean v2, p2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v2, p2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/J1;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/J1;->p(Lcom/google/android/gms/internal/firebase-auth-api/J1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/k0;->a(Lcom/google/android/gms/internal/firebase-auth-api/Z1;)Lcom/google/android/gms/internal/firebase-auth-api/d2;

    move-result-object p0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/J1;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/J1;->q(Lcom/google/android/gms/internal/firebase-auth-api/J1;Lcom/google/android/gms/internal/firebase-auth-api/d2;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/J1;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->m(Lcom/google/android/gms/internal/firebase-auth-api/J1;)V

    return-void

    :cond_2
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "cannot encrypt keyset"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public w(Lcom/google/android/gms/internal/firebase-auth-api/n;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->r()Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->n()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->n()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->n()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->n()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->n()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->n()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->n()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->n()I

    move-result p1

    invoke-static {p1}, LB/f;->G(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->n()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyset contains key material of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for type url "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z1;)V

    return-void
.end method

.method public y(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->k0(II)V

    return-void
.end method

.method public z(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->g0(II)V

    return-void
.end method
