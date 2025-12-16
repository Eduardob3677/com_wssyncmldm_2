.class public final LD1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LD1/e;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V
    .locals 0

    iput p2, p0, LD1/e;->b:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, LD1/e;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LD1/e;-><init>(I)V

    return-void

    :pswitch_0
    iput-object p1, p0, LD1/e;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LD1/e;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LD1/e;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD1/e;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v0, p0, Lj0/J;->o:I

    invoke-virtual {p0}, Lj0/J;->B()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object p0, p0, LD1/e;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget p0, p0, Lj0/J;->o:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, LD1/e;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, LD1/e;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lj0/J;->C()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    iget v0, p0, LD1/e;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD1/e;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget p0, p0, Lj0/J;->n:I

    return p0

    :pswitch_0
    iget-object p0, p0, LD1/e;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v0, p0, Lj0/J;->n:I

    invoke-virtual {p0}, Lj0/J;->D()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LD1/e;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD1/e;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lj0/J;->n:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    iget v0, p0, LD1/e;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD1/e;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lj0/J;->E()I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
