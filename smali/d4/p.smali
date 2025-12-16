.class public final Ld4/p;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ld4/r;

.field public final synthetic f:LL3/G;

.field public final synthetic g:Lf4/r;


# direct methods
.method public synthetic constructor <init>(Ld4/r;LL3/G;Lf4/r;I)V
    .locals 0

    iput p4, p0, Ld4/p;->d:I

    iput-object p1, p0, Ld4/p;->e:Ld4/r;

    iput-object p2, p0, Ld4/p;->f:LL3/G;

    iput-object p3, p0, Ld4/p;->g:Lf4/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ld4/p;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ld4/p;->e:Ld4/r;

    iget-object v1, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v1, v1, Ld4/i;->a:Lg4/o;

    new-instance v2, Ld4/p;

    iget-object v3, p0, Ld4/p;->f:LL3/G;

    iget-object p0, p0, Ld4/p;->g:Lf4/r;

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, p0, v4}, Ld4/p;-><init>(Ld4/r;LL3/G;Lf4/r;I)V

    check-cast v1, Lg4/l;

    invoke-virtual {v1, v2}, Lg4/l;->d(Lc3/a;)Lg4/h;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ld4/p;->e:Ld4/r;

    iget-object v1, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v1, Lr3/j;

    invoke-virtual {v0, v1}, Ld4/r;->a(Lr3/j;)Lcom/google/android/gms/internal/firebase-auth-api/X;

    move-result-object v1

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->e:Ld4/a;

    iget-object v2, p0, Ld4/p;->g:Lf4/r;

    invoke-virtual {v2}, Lu3/K;->n()Lh4/v;

    move-result-object v2

    const-string v3, "property.returnType"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ld4/p;->f:LL3/G;

    invoke-interface {v0, v1, p0, v2}, Ld4/a;->J(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;Lh4/v;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV3/g;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Ld4/p;->e:Ld4/r;

    iget-object v1, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v1, Ld4/i;

    iget-object v1, v1, Ld4/i;->a:Lg4/o;

    new-instance v2, Ld4/p;

    iget-object v3, p0, Ld4/p;->f:LL3/G;

    iget-object p0, p0, Ld4/p;->g:Lf4/r;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, p0, v4}, Ld4/p;-><init>(Ld4/r;LL3/G;Lf4/r;I)V

    check-cast v1, Lg4/l;

    invoke-virtual {v1, v2}, Lg4/l;->d(Lc3/a;)Lg4/h;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Ld4/p;->e:Ld4/r;

    iget-object v1, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v1, Lr3/j;

    invoke-virtual {v0, v1}, Ld4/r;->a(Lr3/j;)Lcom/google/android/gms/internal/firebase-auth-api/X;

    move-result-object v1

    invoke-static {v1}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->e:Ld4/a;

    iget-object v2, p0, Ld4/p;->g:Lf4/r;

    invoke-virtual {v2}, Lu3/K;->n()Lh4/v;

    move-result-object v2

    const-string v3, "property.returnType"

    invoke-static {v3, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ld4/p;->f:LL3/G;

    invoke-interface {v0, v1, p0, v2}, Ld4/a;->y0(Lcom/google/android/gms/internal/firebase-auth-api/X;LL3/G;Lh4/v;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV3/g;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
