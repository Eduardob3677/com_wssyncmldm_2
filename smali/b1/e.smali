.class public final Lb1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/b;
.implements Lcom/google/android/gms/internal/firebase-auth-api/X3;


# instance fields
.field public c:Z

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lb1/e;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lb1/e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "temporaryProof"

    iget-object v2, p0, Lb1/e;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "sessionInfo"

    iget-object v2, p0, Lb1/e;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    iget-object v2, p0, Lb1/e;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object v1, p0, Lb1/e;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "idToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-boolean p0, p0, Lb1/e;->c:Z

    if-nez p0, :cond_2

    const-string p0, "operation"

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(LZ0/a;)V
    .locals 1

    iget-object v0, p0, Lb1/e;->h:Ljava/lang/Object;

    check-cast v0, Lb1/g;

    iget-object v0, v0, Lb1/g;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lb1/e;->e:Ljava/lang/Object;

    check-cast p0, Lb1/a;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb1/d;

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v0}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    iget-object v0, p0, Lb1/d;->b:La1/b;

    check-cast v0, Lc1/k;

    invoke-virtual {v0}, Lc1/k;->d()V

    invoke-virtual {p0, p1}, Lb1/d;->s(LZ0/a;)V

    return-void
.end method

.method public d(LZ0/a;)V
    .locals 4

    iget-object v0, p0, Lb1/e;->h:Ljava/lang/Object;

    check-cast v0, Lb1/g;

    iget-object v0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    new-instance v1, LG/a;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, LG/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
