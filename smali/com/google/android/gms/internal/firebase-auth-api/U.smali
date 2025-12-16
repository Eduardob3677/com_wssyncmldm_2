.class public Lcom/google/android/gms/internal/firebase-auth-api/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/d4;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/Q;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/S;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/X;Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/X;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Given internalKeyMananger "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not support primitive class "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;Lu1/i;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/d4;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->c:I

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/firebase-auth-api/Z4;)Lcom/google/android/gms/internal/firebase-auth-api/S1;
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/X;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X;->n()Lcom/google/android/gms/internal/firebase-auth-api/q0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->a(Lcom/google/android/gms/internal/firebase-auth-api/Z4;)Lcom/google/android/gms/internal/firebase-auth-api/U4;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->e(Lcom/google/android/gms/internal/firebase-auth-api/U4;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->b(Lcom/google/android/gms/internal/firebase-auth-api/U4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U4;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->m()Lcom/google/android/gms/internal/firebase-auth-api/R1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X;->r()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->r(Lcom/google/android/gms/internal/firebase-auth-api/S1;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->b()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->s(Lcom/google/android/gms/internal/firebase-auth-api/S1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X;->o()I

    move-result p0

    iget-boolean p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_2
    iget-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/S1;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->t(Lcom/google/android/gms/internal/firebase-auth-api/S1;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/S1;
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Unexpected proto"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->c:I

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/d4;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    check-cast v0, Lu1/i;

    const-string v1, "completion source cannot be null"

    invoke-static {v1, v0}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->j:Lcom/google/android/gms/internal/firebase-auth-api/p3;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->c:LW1/g;

    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(LW1/g;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->j:Lcom/google/android/gms/internal/firebase-auth-api/p3;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reauthenticateWithCredential"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reauthenticateWithCredentialWithData"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a:Landroid/util/SparseArray;

    const/16 v1, 0x42b6

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    new-instance v1, LY1/f;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gms/internal/firebase-auth-api/p3;->d:Ljava/util/List;

    invoke-static {v3}, Li3/x;->u1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LY1/k;

    instance-of v7, v6, LY1/k;

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v3}, Li3/x;->u1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/p3;->c:Ljava/lang/String;

    invoke-static {p2}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LY1/k;

    instance-of v6, v4, LY1/k;

    if-eqz v6, :cond_4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p1, p1, Lcom/google/firebase/auth/FirebaseAuth;->a:LW1/g;

    invoke-virtual {p1}, LW1/g;->a()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LY1/k;

    instance-of v5, v4, LY1/k;

    if-eqz v5, :cond_6

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object p1, p1, LW1/g;->b:Ljava/lang/String;

    invoke-static {p1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, LW1/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lu1/i;->a(Ljava/lang/Exception;)V

    return-void

    :cond_8
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->i:LY1/c;

    if-eqz p0, :cond_c

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a:Landroid/util/SparseArray;

    const/16 p0, 0x4274

    iget p1, p2, Lcom/google/android/gms/common/api/Status;->d:I

    if-eq p1, p0, :cond_a

    const/16 p0, 0x426f

    if-eq p1, p0, :cond_a

    const/16 p0, 0x4281

    if-ne p1, p0, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a(Lcom/google/android/gms/common/api/Status;)LW1/h;

    move-result-object p0

    goto :goto_5

    :cond_a
    :goto_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_b

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_4

    :cond_b
    const-string p0, "An internal error has occurred."

    :goto_4
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/J3;->c(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, LY1/f;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/J3;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, LW1/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p2

    :goto_5
    invoke-virtual {v0, p0}, Lu1/i;->a(Ljava/lang/Exception;)V

    return-void

    :cond_c
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/J3;->a(Lcom/google/android/gms/common/api/Status;)LW1/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lu1/i;->a(Ljava/lang/Exception;)V

    return-void

    :cond_d
    invoke-virtual {v0, p1}, Lu1/i;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/google/android/gms/internal/firebase-auth-api/Z4;)Lcom/google/android/gms/internal/firebase-auth-api/U4;
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/X;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X;->n()Lcom/google/android/gms/internal/firebase-auth-api/q0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->a(Lcom/google/android/gms/internal/firebase-auth-api/Z4;)Lcom/google/android/gms/internal/firebase-auth-api/U4;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->e(Lcom/google/android/gms/internal/firebase-auth-api/U4;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->b(Lcom/google/android/gms/internal/firebase-auth-api/U4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/U4;
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X;->n()Lcom/google/android/gms/internal/firebase-auth-api/q0;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q0;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Failures parsing proto of type "

    if-eqz v1, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e(Lcom/google/android/gms/internal/firebase-auth-api/Z4;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/X;

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/X;->p(Lcom/google/android/gms/internal/firebase-auth-api/Z4;)Lcom/google/android/gms/internal/firebase-auth-api/U4;

    move-result-object p1

    const-class v1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/X;->s(Lcom/google/android/gms/internal/firebase-auth-api/U4;)V

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/X;->q(Lcom/google/android/gms/internal/firebase-auth-api/U4;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Cannot create a primitive for Void"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/X;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Failures parsing proto of type "

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public f([B)Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d0;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->u()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    const-string v1, "RemoteException when sending delete account response."

    invoke-virtual {p0, v1, p1, v0}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p1}, LB/f;->B(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/U;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z2;->f:Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
