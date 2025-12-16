.class public final LY1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;I)V
    .locals 0

    iput p2, p0, LY1/t;->a:I

    iput-object p1, p0, LY1/t;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/y4;La2/s;)V
    .locals 1

    iget v0, p0, LY1/t;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    iput-object p1, p2, La2/s;->c:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object p0, p0, LY1/t;->b:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->d(Lcom/google/firebase/auth/FirebaseAuth;La2/s;Lcom/google/android/gms/internal/firebase-auth-api/y4;ZZ)V

    return-void

    :pswitch_0
    iget-object p0, p0, LY1/t;->b:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->d(Lcom/google/firebase/auth/FirebaseAuth;La2/s;Lcom/google/android/gms/internal/firebase-auth-api/y4;ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget v0, p0, LY1/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Lcom/google/android/gms/common/api/Status;->d:I

    const/16 v0, 0x4273

    if-eq p1, v0, :cond_0

    const/16 v0, 0x427d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x426d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42c3

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p0, p0, LY1/t;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->a()V

    :cond_1
    return-void

    :pswitch_0
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->d:I

    const/16 v0, 0x4273

    if-eq p1, v0, :cond_2

    const/16 v0, 0x427d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x426d

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object p0, p0, LY1/t;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->a()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
