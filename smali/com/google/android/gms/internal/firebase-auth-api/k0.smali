.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/firebase-auth-api/Z1;)Lcom/google/android/gms/internal/firebase-auth-api/d2;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/d2;->m()Lcom/google/android/gms/internal/firebase-auth-api/a2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->n()I

    move-result v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/d2;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/d2;->o(Lcom/google/android/gms/internal/firebase-auth-api/d2;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z1;->r()Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Y1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->n()Lcom/google/android/gms/internal/firebase-auth-api/b2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->n()Lcom/google/android/gms/internal/firebase-auth-api/S1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/S1;->q()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->o(Lcom/google/android/gms/internal/firebase-auth-api/c2;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->o()I

    move-result v4

    iget-boolean v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_2
    iget-object v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->q(Lcom/google/android/gms/internal/firebase-auth-api/c2;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->q()I

    move-result v4

    iget-boolean v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_3
    iget-object v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->p(Lcom/google/android/gms/internal/firebase-auth-api/c2;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/Y1;->m()I

    move-result v1

    iget-boolean v4, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_4
    iget-object v4, v2, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->r(Lcom/google/android/gms/internal/firebase-auth-api/c2;I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/d2;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/d2;->p(Lcom/google/android/gms/internal/firebase-auth-api/d2;Lcom/google/android/gms/internal/firebase-auth-api/c2;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/d2;

    return-object p0
.end method
