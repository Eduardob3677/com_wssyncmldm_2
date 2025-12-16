.class public final Lcom/google/android/gms/internal/firebase-auth-api/J;
.super Lcom/google/android/gms/internal/firebase-auth-api/K;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/J;->b:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)D
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/J;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(JLjava/lang/Object;)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/J;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;JZ)V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/J;->b:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->g:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->b(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->c(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->g:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->b(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->c(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;JB)V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/J;->b:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->g:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->b(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->c(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->g:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->b(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->c(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;JD)V
    .locals 6

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/J;->b:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/K;->o(Ljava/lang/Object;JJ)V

    return-void

    :pswitch_0
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/K;->o(Ljava/lang/Object;JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;JF)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/J;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->n(IJLjava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->n(IJLjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(JLjava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/J;->b:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->g:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/L;->s(JLjava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/L;->t(JLjava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    sget-boolean p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->g:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/L;->s(JLjava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/L;->t(JLjava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
