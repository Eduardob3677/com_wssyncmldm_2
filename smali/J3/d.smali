.class public final LJ3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/a;
.implements Ld4/c;
.implements Lcom/google/android/gms/internal/firebase-auth-api/X3;


# instance fields
.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const-string p1, "REQUEST_TYPE_UNSET_ENUM_VALUE"

    goto :goto_0

    :cond_0
    const-string p1, "VERIFY_AND_CHANGE_EMAIL"

    goto :goto_0

    :cond_1
    const-string p1, "EMAIL_SIGNIN"

    goto :goto_0

    :cond_2
    const-string p1, "VERIFY_EMAIL"

    goto :goto_0

    :cond_3
    const-string p1, "PASSWORD_RESET"

    :goto_0
    iput-object p1, p0, LJ3/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public static final b(LJ3/d;LQ3/f;Ljava/lang/Object;)LV3/g;
    .locals 1

    sget-object v0, LV3/h;->a:LV3/h;

    iget-object p0, p0, LJ3/d;->e:Ljava/lang/Object;

    check-cast p0, Lr3/x;

    invoke-virtual {v0, p2, p0}, LV3/h;->b(Ljava/lang/Object;Lr3/x;)LV3/g;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported annotation argument: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-static {p1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, LV3/j;

    invoke-direct {p1, p0}, LV3/j;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static synthetic g(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/X;LJ3/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;
    .locals 9

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v7, p4

    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, p5

    :goto_1
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, LJ3/d;->f(Lcom/google/android/gms/internal/firebase-auth-api/X;LJ3/r;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static h(LR3/b;LN3/f;Ls2/c;IZ)LJ3/r;
    .locals 8

    const-string v0, "proto"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/f;->x(ILjava/lang/String;)V

    instance-of v0, p0, LL3/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p3, LP3/h;->a:LR3/i;

    check-cast p0, LL3/l;

    invoke-static {p0, p1, p2}, LP3/h;->a(LL3/l;LN3/f;Ls2/c;)LP3/e;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Li3/x;->z(Li3/x;)LJ3/r;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, LL3/y;

    if-eqz v0, :cond_3

    sget-object p3, LP3/h;->a:LR3/i;

    check-cast p0, LL3/y;

    invoke-static {p0, p1, p2}, LP3/h;->c(LL3/y;LN3/f;Ls2/c;)LP3/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {p0}, Li3/x;->z(Li3/x;)LJ3/r;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, LL3/G;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, LR3/n;

    sget-object v2, LO3/k;->d:LR3/p;

    const-string v3, "propertySignature"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lf1/a;->C(LR3/n;LR3/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/e;

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-static {p3}, Lk/Q0;->f(I)I

    move-result p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_7

    const/4 p0, 0x2

    if-eq p3, p0, :cond_6

    const/4 p0, 0x3

    if-eq p3, p0, :cond_5

    goto :goto_0

    :cond_5
    iget p0, v0, LO3/e;->d:I

    const/16 p2, 0x8

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_8

    iget-object p0, v0, LO3/e;->h:LO3/c;

    const-string p2, "signature.setter"

    invoke-static {p2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget p2, p0, LO3/c;->e:I

    invoke-interface {p1, p2}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, LO3/c;->f:I

    invoke-interface {p1, p0}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, LJ3/r;

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, LJ3/r;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget p0, v0, LO3/e;->d:I

    const/4 p2, 0x4

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_8

    iget-object p0, v0, LO3/e;->g:LO3/c;

    const-string p2, "signature.getter"

    invoke-static {p2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget p2, p0, LO3/c;->e:I

    invoke-interface {p1, p2}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, LO3/c;->f:I

    invoke-interface {p1, p0}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, LJ3/r;

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, LJ3/r;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, p0

    check-cast v2, LL3/G;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, p4

    invoke-static/range {v2 .. v7}, LW1/a;->K(LL3/G;LN3/f;Ls2/c;ZZZ)LJ3/r;

    move-result-object v1

    :cond_8
    :goto_0
    return-object v1
.end method

.method public static q(Ld4/s;)Lw3/b;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/X;->d:Ljava/lang/Object;

    check-cast p0, Lr3/N;

    instance-of v0, p0, LJ3/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, LJ3/q;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, LJ3/q;->b:Lw3/b;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public G(Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;I)Ljava/util/List;
    .locals 7

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/f;->x(ILjava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v1, LN3/f;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    check-cast v2, Ls2/c;

    invoke-static {p2, v1, v2, p3, v0}, LJ3/d;->h(LR3/b;LN3/f;Ls2/c;IZ)LJ3/r;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v2, LJ3/r;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, LJ3/r;->a:Ljava/lang/String;

    const-string v0, "@0"

    invoke-static {p3, p2, v0}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, LJ3/r;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, LJ3/d;->g(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/X;LJ3/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public J(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;Lh4/v;)Ljava/lang/Object;
    .locals 7

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, LJ3/b;->e:LJ3/b;

    const/4 v4, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, LJ3/d;->m(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;ILh4/v;Lc3/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public V(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;)Ljava/util/List;
    .locals 1

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, LJ3/d;->n(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "EMAIL_SIGNIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v2, "VERIFY_AND_CHANGE_EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "VERIFY_EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v2, "PASSWORD_RESET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x7

    goto :goto_2

    :cond_2
    const/4 v3, 0x6

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    const-string v1, "requestType"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, LJ3/d;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "newEmail"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, LJ3/d;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "idToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, LY1/a;

    if-eqz v1, :cond_d

    const-string v2, "androidInstallApp"

    iget-boolean v1, v1, LY1/a;->g:Z

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, LY1/a;

    iget-boolean v1, v1, LY1/a;->i:Z

    const-string v2, "canHandleCodeInApp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, LY1/a;

    iget-object v1, v1, LY1/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "continueUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, LY1/a;

    iget-object v1, v1, LY1/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v2, "iosBundleId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, LY1/a;

    iget-object v1, v1, LY1/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v2, "iosAppStoreId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, LY1/a;

    iget-object v1, v1, LY1/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v2, "androidPackageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, LY1/a;

    iget-object v1, v1, LY1/a;->h:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v2, "androidMinimumVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, LY1/a;

    iget-object v1, v1, LY1/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v2, "dynamicLinkDomain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object p0, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_e

    const-string v1, "tenantId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x56916d75 -> :sswitch_3
        -0x4ffacbca -> :sswitch_2
        -0x4183d145 -> :sswitch_1
        0x33e669c5 -> :sswitch_0
    .end sparse-switch
.end method

.method public a0(LL3/W;LN3/f;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LO3/k;->h:LR3/p;

    invoke-virtual {p1, v0}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmPr\u2026.typeParameterAnnotation)"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/g;

    const-string v2, "it"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v2, LA3/D;

    invoke-virtual {v2, v1, p2}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Property \"autoMetadata\" has not been set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()LL0/a;
    .locals 11

    iget-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " transportName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, LJ3/d;->e:Ljava/lang/Object;

    check-cast v1, LL0/f;

    if-nez v1, :cond_1

    const-string v1, " encodedPayload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, LJ3/d;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " eventMillis"

    invoke-static {v0, v1}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_3

    const-string v1, " uptimeMillis"

    invoke-static {v0, v1}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_4

    const-string v1, " autoMetadata"

    invoke-static {v0, v1}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, LL0/a;

    iget-object v1, p0, LJ3/d;->c:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, p0, LJ3/d;->d:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    iget-object v1, p0, LJ3/d;->e:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LL0/f;

    iget-object v1, p0, LJ3/d;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object p0, p0, LJ3/d;->h:Ljava/lang/Object;

    move-object v10, p0

    check-cast v10, Ljava/util/Map;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, LL0/a;-><init>(Ljava/lang/String;Ljava/lang/Integer;LL0/f;JJLjava/util/Map;)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Lu1/n;)Lu1/n;
    .locals 3

    sget-object v0, Lcom/google/firebase/messaging/c;->g:Lcom/google/firebase/messaging/c;

    new-instance v1, Lcom/google/firebase/messaging/g;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/g;-><init>(I)V

    iput-object p0, v1, Lcom/google/firebase/messaging/g;->d:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lu1/n;->g(Ljava/util/concurrent/Executor;Lu1/a;)Lu1/n;

    move-result-object p0

    return-object p0
.end method

.method public f(Lcom/google/android/gms/internal/firebase-auth-api/X;LJ3/r;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, LJ3/d;->i(Lcom/google/android/gms/internal/firebase-auth-api/X;ZZLjava/lang/Boolean;Z)Lw3/b;

    move-result-object p3

    if-nez p3, :cond_1

    instance-of p3, p1, Ld4/s;

    if-eqz p3, :cond_0

    check-cast p1, Ld4/s;

    invoke-static {p1}, LJ3/d;->q(Ld4/s;)Lw3/b;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    sget-object p1, LR2/u;->c:LR2/u;

    if-nez p3, :cond_2

    return-object p1

    :cond_2
    iget-object p0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast p0, Lg4/e;

    invoke-virtual {p0, p3}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ3/a;

    iget-object p0, p0, LJ3/a;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public i(Lcom/google/android/gms/internal/firebase-auth-api/X;ZZLjava/lang/Boolean;Z)Lw3/b;
    .locals 5

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LL3/i;->e:LL3/i;

    const/4 v1, 0x0

    iget-object v2, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v2, Le/v;

    iget-object v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->d:Ljava/lang/Object;

    check-cast v3, Lr3/N;

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    instance-of p2, p1, Ld4/s;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ld4/s;

    iget-object v4, p2, Ld4/s;->h:LL3/i;

    if-ne v4, v0, :cond_0

    const-string p1, "DefaultImpls"

    invoke-static {p1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p1

    iget-object p2, p2, Ld4/s;->g:LQ3/b;

    invoke-virtual {p2, p1}, LQ3/b;->d(LQ3/f;)LQ3/b;

    move-result-object p1

    iget-object p0, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast p0, LP3/f;

    invoke-static {v2, p1, p0}, Lf1/a;->w(Le/v;LQ3/b;LP3/f;)Lw3/b;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p1, Ld4/t;

    if-eqz p2, :cond_4

    instance-of p2, v3, LJ3/h;

    if-eqz p2, :cond_1

    move-object p2, v3

    check-cast p2, LJ3/h;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, LJ3/h;->c:LY3/b;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_4

    new-instance p1, LQ3/c;

    invoke-virtual {p2}, LY3/b;->e()Ljava/lang/String;

    move-result-object p2

    const-string p3, "facadeClassName.internalName"

    invoke-static {p3, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p3, 0x2f

    const/16 p4, 0x2e

    invoke-static {p2, p3, p4}, Ls4/h;->q(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object p1

    iget-object p0, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast p0, LP3/f;

    invoke-static {v2, p1, p0}, Lf1/a;->w(Le/v;LQ3/b;LP3/f;)Lw3/b;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "isConst should not be null for property (container="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p3, :cond_6

    instance-of p2, p1, Ld4/s;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Ld4/s;

    sget-object p3, LL3/i;->h:LL3/i;

    iget-object p4, p2, Ld4/s;->h:LL3/i;

    if-ne p4, p3, :cond_6

    iget-object p2, p2, Ld4/s;->f:Ld4/s;

    if-eqz p2, :cond_6

    sget-object p3, LL3/i;->d:LL3/i;

    iget-object p4, p2, Ld4/s;->h:LL3/i;

    if-eq p4, p3, :cond_5

    sget-object p3, LL3/i;->f:LL3/i;

    if-eq p4, p3, :cond_5

    if-eqz p5, :cond_6

    if-eq p4, v0, :cond_5

    sget-object p3, LL3/i;->g:LL3/i;

    if-ne p4, p3, :cond_6

    :cond_5
    invoke-static {p2}, LJ3/d;->q(Ld4/s;)Lw3/b;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of p1, p1, Ld4/t;

    if-eqz p1, :cond_8

    instance-of p1, v3, LJ3/h;

    if-eqz p1, :cond_8

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource"

    invoke-static {p1, v3}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, LJ3/h;

    iget-object p1, v3, LJ3/h;->d:Lw3/b;

    if-nez p1, :cond_7

    invoke-virtual {v3}, LJ3/h;->b()LQ3/b;

    move-result-object p1

    iget-object p0, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast p0, LP3/f;

    invoke-static {v2, p1, p0}, Lf1/a;->w(Le/v;LQ3/b;LP3/f;)Lw3/b;

    move-result-object p1

    :cond_7
    return-object p1

    :cond_8
    return-object v1
.end method

.method public j(LQ3/b;)Z
    .locals 3

    const-string v0, "classId"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, LQ3/b;->g()LQ3/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LQ3/b;->j()LQ3/f;

    move-result-object v0

    invoke-virtual {v0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Container"

    invoke-static {v0, v2}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast v0, LP3/f;

    iget-object p0, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast p0, Le/v;

    invoke-static {p0, p1, v0}, Lf1/a;->w(Le/v;LQ3/b;LP3/f;)Lw3/b;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Ln3/a;->a:Ljava/util/LinkedHashSet;

    new-instance p1, Ld3/p;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc1/w;

    invoke-direct {v0, p1}, Lc1/w;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lw3/b;->a:Ljava/lang/Class;

    invoke-static {p0, v0}, Lo3/f;->p(Ljava/lang/Class;LJ3/o;)V

    iget-boolean p0, p1, Ld3/p;->c:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public j0(LL3/Q;LN3/f;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LO3/k;->f:LR3/p;

    invoke-virtual {p1, v0}, LR3/n;->k(LR3/p;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmProtoBuf.typeAnnotation)"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL3/g;

    const-string v2, "it"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast v2, LA3/D;

    invoke-virtual {v2, v1, p2}, LA3/D;->D0(LL3/g;LN3/f;)Ls3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public k(LQ3/b;Lr3/N;Ljava/util/List;)LJ3/c;
    .locals 8

    const-string v0, "result"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, LJ3/d;->e:Ljava/lang/Object;

    check-cast v0, Lr3/x;

    iget-object v1, p0, LJ3/d;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/messaging/p;

    invoke-static {v0, p1, v1}, Lo4/a;->g(Lr3/x;LQ3/b;Lcom/google/firebase/messaging/p;)Lr3/e;

    move-result-object v4

    new-instance v0, LJ3/c;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, LJ3/c;-><init>(LJ3/d;Lr3/e;LQ3/b;Ljava/util/List;Lr3/N;)V

    return-object v0
.end method

.method public k0(Ld4/s;)Ljava/util/ArrayList;
    .locals 7

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LJ3/d;->q(Ld4/s;)Lw3/b;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "klass"

    iget-object v0, v0, Lw3/b;->a:Ljava/lang/Class;

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v1, "klass.declaredAnnotations"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "annotation"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v4

    invoke-static {v4}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lx3/d;->a(Ljava/lang/Class;)LQ3/b;

    move-result-object v5

    new-instance v6, Lw3/a;

    invoke-direct {v6, v3}, Lw3/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p0, v5, v6, p1}, LJ3/d;->l(LQ3/b;Lw3/a;Ljava/util/List;)LJ3/c;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5, v3, v4}, Lo3/f;->q(LJ3/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class for loading annotations is not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ld4/s;->j()LQ3/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l(LQ3/b;Lw3/a;Ljava/util/List;)LJ3/c;
    .locals 1

    const-string v0, "result"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ln3/a;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, LJ3/d;->k(LQ3/b;Lr3/N;Ljava/util/List;)LJ3/c;

    move-result-object p0

    return-object p0
.end method

.method public m(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;ILh4/v;Lc3/c;)Ljava/lang/Object;
    .locals 8

    sget-object v0, LN3/e;->A:LN3/b;

    iget v1, p2, LL3/G;->f:I

    invoke-virtual {v0, v1}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p2}, LP3/h;->d(LL3/G;)Z

    move-result v7

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, LJ3/d;->i(Lcom/google/android/gms/internal/firebase-auth-api/X;ZZLjava/lang/Boolean;Z)Lw3/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Ld4/s;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ld4/s;

    invoke-static {v0}, LJ3/d;->q(Ld4/s;)Lw3/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v0, Lw3/b;->b:LK3/b;

    iget-object v2, v2, LK3/b;->e:Ljava/lang/Object;

    check-cast v2, LP3/f;

    sget-object v3, LJ3/f;->e:LP3/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "version"

    invoke-static {v4, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v4, v3, LN3/a;->b:I

    iget v5, v3, LN3/a;->c:I

    iget v3, v3, LN3/a;->d:I

    invoke-virtual {v2, v4, v5, v3}, LN3/a;->a(III)Z

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v3, LN3/f;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    check-cast p1, Ls2/c;

    invoke-static {p2, v3, p1, p3, v2}, LJ3/d;->h(LR3/b;LN3/f;Ls2/c;IZ)LJ3/r;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    iget-object p0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast p0, Lg4/e;

    invoke-virtual {p0, v0}, Lg4/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p5, p0, p1}, Lc3/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-static {p4}, Lo3/r;->a(Lh4/v;)Z

    move-result p1

    if-eqz p1, :cond_8

    check-cast p0, LV3/g;

    instance-of p1, p0, LV3/d;

    if-eqz p1, :cond_5

    new-instance p1, LV3/x;

    check-cast p0, LV3/d;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, LV3/x;-><init>(B)V

    :goto_1
    move-object p0, p1

    goto :goto_2

    :cond_5
    instance-of p1, p0, LV3/u;

    if-eqz p1, :cond_6

    new-instance p1, LV3/x;

    check-cast p0, LV3/u;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, LV3/x;-><init>(S)V

    goto :goto_1

    :cond_6
    instance-of p1, p0, LV3/k;

    if-eqz p1, :cond_7

    new-instance p1, LV3/x;

    check-cast p0, LV3/k;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, LV3/x;-><init>(I)V

    goto :goto_1

    :cond_7
    instance-of p1, p0, LV3/s;

    if-eqz p1, :cond_8

    new-instance p1, LV3/x;

    check-cast p0, LV3/s;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, LV3/x;-><init>(J)V

    goto :goto_1

    :cond_8
    :goto_2
    return-object p0
.end method

.method public n(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;I)Ljava/util/List;
    .locals 12

    sget-object v2, LN3/e;->A:LN3/b;

    iget v4, p2, LL3/G;->f:I

    invoke-virtual {v2, v4}, LN3/b;->c(I)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {p2}, LP3/h;->d(LL3/G;)Z

    move-result v10

    sget-object v2, LR2/u;->c:LR2/u;

    const/4 v11, 0x1

    if-ne p3, v11, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, LN3/f;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ls2/c;

    const/16 v8, 0x28

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LW1/a;->L(LL3/G;LN3/f;Ls2/c;ZZI)LJ3/r;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    const/16 v6, 0x8

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move-object v4, v9

    move v5, v10

    invoke-static/range {v0 .. v6}, LJ3/d;->g(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/X;LJ3/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v4, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v4, LN3/f;

    iget-object v5, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    check-cast v5, Ls2/c;

    const/16 v8, 0x30

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LW1/a;->L(LL3/G;LN3/f;Ls2/c;ZZI)LJ3/r;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    iget-object v4, v3, LJ3/r;->a:Ljava/lang/String;

    const-string v5, "$delegate"

    invoke-static {v4, v5}, Ls4/h;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-ne p3, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    :goto_0
    if-eq v4, v11, :cond_4

    return-object v2

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, LJ3/d;->f(Lcom/google/android/gms/internal/firebase-auth-api/X;LJ3/r;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sender"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "subtype"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmp_app_id"

    iget-object p2, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast p2, LW1/g;

    invoke-virtual {p2}, LW1/g;->a()V

    iget-object p2, p2, LW1/g;->c:LW1/j;

    iget-object p2, p2, LW1/j;->b:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmsv"

    iget-object p2, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast p2, Lcom/google/firebase/messaging/l;

    monitor-enter p2

    :try_start_0
    iget v0, p2, Lcom/google/firebase/messaging/l;->d:I

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p2, v0}, Lcom/google/firebase/messaging/l;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p2, Lcom/google/firebase/messaging/l;->d:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget v0, p2, Lcom/google/firebase/messaging/l;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osv"

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver"

    iget-object p2, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast p2, Lcom/google/firebase/messaging/l;

    invoke-virtual {p2}, Lcom/google/firebase/messaging/l;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver_name"

    iget-object p2, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast p2, Lcom/google/firebase/messaging/l;

    monitor-enter p2

    :try_start_1
    iget-object v0, p2, Lcom/google/firebase/messaging/l;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/messaging/l;->e()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_1
    iget-object v0, p2, Lcom/google/firebase/messaging/l;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p2

    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "firebase-app-name-hash"

    iget-object p2, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast p2, LW1/g;

    invoke-virtual {p2}, LW1/g;->a()V

    iget-object p2, p2, LW1/g;->b:Ljava/lang/String;

    const-string v0, "SHA-1"

    :try_start_2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    const/16 v0, 0xb

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const-string p2, "[HASH-ERROR]"

    :goto_2
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object p1, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast p1, Ll2/d;

    check-cast p1, Ll2/c;

    invoke-virtual {p1}, Ll2/c;->d()Lu1/n;

    move-result-object p1

    invoke-static {p1}, Lp0/a;->a(Lu1/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll2/a;

    iget-object p1, p1, Ll2/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Goog-Firebase-Installations-Auth"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_2
    const-string p1, "FirebaseMessaging"

    const-string p2, "FIS auth token is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :goto_3
    const-string p2, "FirebaseMessaging"

    const-string v0, "Failed to get FIS auth token"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const-string p1, "appid"

    iget-object p2, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast p2, Ll2/d;

    check-cast p2, Ll2/c;

    invoke-virtual {p2}, Ll2/c;->c()Lu1/n;

    move-result-object p2

    invoke-static {p2}, Lp0/a;->a(Lu1/h;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cliv"

    const-string p2, "fcm-23.0.0"

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LJ3/d;->g:Ljava/lang/Object;

    check-cast p1, Lk2/a;

    invoke-interface {p1}, Lk2/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li2/b;

    iget-object p0, p0, LJ3/d;->f:Ljava/lang/Object;

    check-cast p0, Lk2/a;

    invoke-interface {p0}, Lk2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls2/b;

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    const-string p2, "fire-iid"

    invoke-virtual {p1, p2}, Li2/b;->a(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const-string p2, "Firebase-Client-Log-Type"

    invoke-static {p1}, Lk/Q0;->f(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Firebase-Client"

    invoke-virtual {p0}, Ls2/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :goto_5
    monitor-exit p2

    throw p0

    :goto_6
    monitor-exit p2

    throw p0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lu1/n;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, LJ3/d;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p0, p0, LJ3/d;->e:Ljava/lang/Object;

    check-cast p0, LY0/a;

    iget-object p1, p0, LY0/a;->c:LY0/k;

    monitor-enter p1

    :try_start_1
    iget p2, p1, LY0/k;->c:I

    if-nez p2, :cond_0

    const-string p2, "com.google.android.gms"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p1, LY0/k;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lj1/a;->a(Landroid/content/Context;)LL0/c;

    move-result-object v0

    iget-object v0, v0, LL0/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_0
    move-exception p2

    :try_start_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x17

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to find package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Metadata"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p2, p1, LY0/k;->c:I

    :cond_0
    iget p2, p1, LY0/k;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p1

    const p1, 0xb71b00

    if-ge p2, p1, :cond_2

    iget-object p1, p0, LY0/a;->c:LY0/k;

    invoke-virtual {p1}, LY0/k;->a()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, LY0/a;->a(Landroid/os/Bundle;)Lu1/n;

    move-result-object p1

    sget-object p2, LY0/m;->c:LY0/m;

    new-instance v0, LA3/D;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1, p3}, LA3/D;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lu1/n;->h(Ljava/util/concurrent/Executor;Lu1/a;)Lu1/n;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lp0/a;->i(Ljava/lang/Exception;)Lu1/n;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, LY0/a;->b:Landroid/content/Context;

    invoke-static {p0}, LY0/j;->b(Landroid/content/Context;)LY0/j;

    move-result-object p0

    new-instance p1, LY0/i;

    monitor-enter p0

    :try_start_4
    iget p2, p0, LY0/j;->c:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, LY0/j;->c:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, p3, v1}, LY0/i;-><init>(IILandroid/os/Bundle;I)V

    invoke-virtual {p0, p1}, LY0/j;->c(LY0/i;)Lu1/n;

    move-result-object p0

    sget-object p1, LY0/m;->c:LY0/m;

    sget-object p2, LY0/l;->c:LY0/l;

    invoke-virtual {p0, p1, p2}, Lu1/n;->g(Ljava/util/concurrent/Executor;Lu1/a;)Lu1/n;

    move-result-object p0

    :goto_1
    return-object p0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :goto_2
    monitor-exit p1

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lp0/a;->i(Ljava/lang/Exception;)Lu1/n;

    move-result-object p0

    return-object p0
.end method

.method public r(Lcom/google/android/gms/internal/firebase-auth-api/U1;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->r()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->o()I

    move-result p1

    invoke-static {p1}, Lk/Q0;->f(I)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown output prefix type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/V;->a([BILjava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object p1

    iput-object p1, p0, LJ3/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public s(Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;IILL3/Z;)Ljava/util/List;
    .locals 8

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "callableProto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/f;->x(ILjava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v0, p5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p5, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast p5, LN3/f;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    check-cast v0, Ls2/c;

    const/4 v1, 0x0

    invoke-static {p2, p5, v0, p3, v1}, LJ3/d;->h(LR3/b;LN3/f;Ls2/c;IZ)LJ3/r;

    move-result-object p3

    if-eqz p3, :cond_6

    instance-of p5, p2, LL3/y;

    const/16 v0, 0x40

    const/4 v2, 0x1

    if-eqz p5, :cond_1

    check-cast p2, LL3/y;

    invoke-virtual {p2}, LL3/y;->q()Z

    move-result p5

    if-nez p5, :cond_0

    iget p2, p2, LL3/y;->e:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    instance-of p5, p2, LL3/G;

    if-eqz p5, :cond_2

    check-cast p2, LL3/G;

    invoke-virtual {p2}, LL3/G;->q()Z

    move-result p5

    if-nez p5, :cond_0

    iget p2, p2, LL3/G;->e:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_2
    instance-of p5, p2, LL3/l;

    if-eqz p5, :cond_5

    move-object p2, p1

    check-cast p2, Ld4/s;

    sget-object p5, LL3/i;->f:LL3/i;

    iget-object v3, p2, Ld4/s;->h:LL3/i;

    if-ne v3, p5, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    iget-boolean p2, p2, Ld4/s;->i:Z

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    add-int/2addr p4, v1

    new-instance v3, LJ3/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, LJ3/r;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, LJ3/r;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3c

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, LJ3/d;->g(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/X;LJ3/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported message: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, LJ3/d;->h:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, LJ3/d;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "need an Android context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public u(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;)Ljava/util/List;
    .locals 1

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LJ3/d;->n(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized v()Lcom/google/android/gms/internal/firebase-auth-api/n;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ3/d;->w()Lcom/google/android/gms/internal/firebase-auth-api/n0;

    move-result-object v0

    iput-object v0, p0, LJ3/d;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, LJ3/d;->x()Lcom/google/android/gms/internal/firebase-auth-api/Y;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "n"

    const-string v2, "keyset not found, will generate a new one"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, LJ3/d;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Y;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->o()Lcom/google/android/gms/internal/firebase-auth-api/W1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/W1;)V

    iget-object v1, p0, LJ3/d;->f:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y;->b(Lcom/google/android/gms/internal/firebase-auth-api/V;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/Y;->a()Lcom/google/android/gms/internal/firebase-auth-api/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/k0;->a(Lcom/google/android/gms/internal/firebase-auth-api/Z1;)Lcom/google/android/gms/internal/firebase-auth-api/d2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/d2;->n()Lcom/google/android/gms/internal/firebase-auth-api/c2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y;->c(I)V

    iget-object v1, p0, LJ3/d;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/n0;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/Y;->a()Lcom/google/android/gms/internal/firebase-auth-api/n;

    move-result-object v1

    iget-object v2, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v3, p0, LJ3/d;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/n0;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/n;->v(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/Q;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/Y;->a()Lcom/google/android/gms/internal/firebase-auth-api/n;

    move-result-object v1

    iget-object v2, p0, LJ3/d;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/n;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z1;)V

    :goto_1
    iput-object v0, p0, LJ3/d;->g:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(LJ3/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cannot read or generate keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public w()Lcom/google/android/gms/internal/firebase-auth-api/n0;
    .locals 9

    const-string v0, "cannot generate a new key "

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/F0;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/F0;-><init>()V

    iget-object v2, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/F0;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "cannot use Android Keystore, it\'ll be disabled"

    const-string v5, "n"

    if-nez v2, :cond_1

    :try_start_0
    iget-object v6, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/F0;

    invoke-direct {v7}, Lcom/google/android/gms/internal/firebase-auth-api/F0;-><init>()V

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/F0;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "AES"

    const-string v7, "AndroidKeyStore"

    invoke-static {v6, v7}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v6

    new-instance v7, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {v7, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v7, "GCM"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v7, "NoPadding"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v6}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it already exists; please delete it with deleteKey() and try again"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v5, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/F0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/n0;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    if-nez v2, :cond_2

    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_2
    new-instance v1, Ljava/security/KeyStoreException;

    iget-object p0, p0, LJ3/d;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v2, "the master key "

    const-string v3, " exists but is unusable"

    invoke-static {v2, p0, v3}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public x()Lcom/google/android/gms/internal/firebase-auth-api/Y;
    .locals 4

    iget-object v0, p0, LJ3/d;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/n0;

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->x(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/Q;)Lcom/google/android/gms/internal/firebase-auth-api/n;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/Y;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/l5;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/W1;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/Y;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/W1;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "n"

    const-string v3, "cannot decrypt keyset: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p0, p0, LJ3/d;->h:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->p()[B

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->q([BLcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/Z1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->m()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Y;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->h(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m5;)V

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/W1;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/W1;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public y(Ld4/s;LL3/t;)Ljava/util/List;
    .locals 9

    const-string v0, "container"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget p2, p2, LL3/t;->f:I

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v0, LN3/f;

    invoke-interface {v0, p2}, LN3/f;->r(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Ld4/s;->g:LQ3/b;

    invoke-virtual {v0}, LQ3/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "container as ProtoContai\u2026Class).classId.asString()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, LP3/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, LJ3/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x23

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, LJ3/r;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x3c

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, LJ3/d;->g(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/X;LJ3/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public y0(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;Lh4/v;)Ljava/lang/Object;
    .locals 7

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, LJ3/b;->f:LJ3/b;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, LJ3/d;->m(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;ILh4/v;Lc3/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public z(Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;I)Ljava/util/List;
    .locals 10

    const-string v0, "proto"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, LB/f;->x(ILjava/lang/String;)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    check-cast p2, LL3/G;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, LJ3/d;->n(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v1, LN3/f;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->c:Ljava/lang/Object;

    check-cast v2, Ls2/c;

    invoke-static {p2, v1, v2, p3, v0}, LJ3/d;->h(LR3/b;LN3/f;Ls2/c;IZ)LJ3/r;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x3c

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, LJ3/d;->g(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/X;LJ3/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
