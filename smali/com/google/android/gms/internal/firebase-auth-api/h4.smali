.class public final Lcom/google/android/gms/internal/firebase-auth-api/h4;
.super Lcom/google/android/gms/internal/firebase-auth-api/G3;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/internal/firebase-auth-api/k4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/k4;Lcom/google/android/gms/internal/firebase-auth-api/G3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/h4;->d:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    iget-object p1, p2, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a:Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b:LA/d;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/h4;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v0, LA/d;->a:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget-object v2, v0, LA/d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "onCodeSent"

    invoke-virtual {v0, v3, v1}, LA/d;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/h4;->d:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/h4;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->g:Z

    iput-object p1, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->d:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->a:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_5

    iget-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->i:Z

    if-nez p1, :cond_4

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->g(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_5
    iget-boolean p1, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->c:Z

    if-nez p1, :cond_6

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->g(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object p1, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->I(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->b(Lcom/google/android/gms/internal/firebase-auth-api/k4;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    iget v1, p1, Lcom/google/android/gms/common/api/Status;->d:I

    invoke-static {v1}, LZ0/j;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/common/api/Status;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x27

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SMS verification code request failed: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, LA/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/h4;->d:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/h4;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d(Ljava/lang/String;)V

    return-void
.end method
