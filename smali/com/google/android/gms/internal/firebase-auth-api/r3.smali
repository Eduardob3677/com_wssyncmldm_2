.class public final Lcom/google/android/gms/internal/firebase-auth-api/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/d4;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/google/android/gms/internal/firebase-auth-api/d4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/d4;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/r3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/r3;->d:Lcom/google/android/gms/internal/firebase-auth-api/d4;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/z2;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/r3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/r3;->d:Lcom/google/android/gms/internal/firebase-auth-api/d4;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/r3;->c:I

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/r3;->d:Lcom/google/android/gms/internal/firebase-auth-api/d4;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->b(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/r3;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/r3;->d:Lcom/google/android/gms/internal/firebase-auth-api/d4;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/d4;->k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V

    return-void

    :pswitch_0
    invoke-static {p1}, LB/f;->B(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
