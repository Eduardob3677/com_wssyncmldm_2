.class public final Ld4/x;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LJ3/c;


# direct methods
.method public synthetic constructor <init>(LJ3/c;I)V
    .locals 0

    iput p2, p0, Ld4/x;->d:I

    iput-object p1, p0, Ld4/x;->e:LJ3/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ld4/x;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LL3/Q;

    const-string v0, "it"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ld4/x;->e:LJ3/c;

    iget-object p0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    check-cast p0, Ls2/c;

    invoke-static {p1, p0}, Li3/x;->I0(LL3/Q;Ls2/c;)LL3/Q;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Ld4/x;->e:LJ3/c;

    iget-object p0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v0, LN3/f;

    invoke-static {v0, p1}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object p1

    iget-boolean v0, p1, LQ3/b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p0, Ld4/i;

    iget-object p0, p0, Ld4/i;->b:Lr3/x;

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lo4/a;->f(Lr3/x;LQ3/b;)Lr3/g;

    move-result-object p0

    instance-of p1, p0, Lf4/t;

    if-eqz p1, :cond_1

    move-object v1, p0

    check-cast v1, Lf4/t;

    :cond_1
    :goto_0
    return-object v1

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Ld4/x;->e:LJ3/c;

    iget-object p0, p0, LJ3/c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d:Ljava/lang/Object;

    check-cast v0, LN3/f;

    invoke-static {v0, p1}, LL2/b;->l(LN3/f;I)LQ3/b;

    move-result-object p1

    iget-boolean v0, p1, LQ3/b;->c:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast p0, Ld4/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ld4/i;->b(LQ3/b;)Lr3/e;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Ld4/i;->b:Lr3/x;

    invoke-static {p0, p1}, Lo4/a;->f(Lr3/x;LQ3/b;)Lr3/g;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
