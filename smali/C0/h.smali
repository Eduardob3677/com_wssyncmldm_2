.class public final LC0/h;
.super LC0/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LC0/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LC0/h;->a:I

    iput-object p2, p0, LC0/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(LC0/t;)V
    .locals 2

    iget v0, p0, LC0/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC0/h;->b:Ljava/lang/Object;

    check-cast v0, LC0/y;

    iget v1, v0, LC0/y;->B:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LC0/y;->B:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, LC0/y;->C:Z

    invoke-virtual {v0}, LC0/t;->n()V

    :cond_0
    invoke-virtual {p1, p0}, LC0/t;->w(LC0/s;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LC0/h;->b:Ljava/lang/Object;

    check-cast v0, LC0/t;

    invoke-virtual {v0}, LC0/t;->z()V

    invoke-virtual {p1, p0}, LC0/t;->w(LC0/s;)V

    return-void

    :pswitch_1
    sget-object v0, LC0/A;->a:LC0/c;

    iget-object v0, p0, LC0/h;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual {p1, p0}, LC0/t;->w(LC0/s;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(LC0/t;)V
    .locals 0

    iget p1, p0, LC0/h;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LC0/h;->b:Ljava/lang/Object;

    check-cast p0, LC0/y;

    iget-boolean p1, p0, LC0/y;->C:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, LC0/t;->G()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LC0/y;->C:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
