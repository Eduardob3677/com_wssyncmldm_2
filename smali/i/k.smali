.class public final Li/k;
.super LZ0/j;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Li/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/k;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Li/k;->c:Z

    iput p1, p0, Li/k;->d:I

    return-void
.end method

.method public constructor <init>(Lk/I1;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Li/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/k;->e:Ljava/lang/Object;

    iput p2, p0, Li/k;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Li/k;->c:Z

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Li/k;->b:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Li/k;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Li/k;->e:Ljava/lang/Object;

    check-cast v0, Lk/I1;

    iget-object v0, v0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Li/k;->d:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    iget v0, p0, Li/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li/k;->d:I

    iget-object v1, p0, Li/k;->e:Ljava/lang/Object;

    check-cast v1, Li/l;

    iget-object v2, v1, Li/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Li/l;->d:LJ/b0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LJ/b0;->c()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Li/k;->d:I

    iput-boolean v0, p0, Li/k;->c:Z

    iput-boolean v0, v1, Li/l;->e:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 1

    iget v0, p0, Li/k;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/k;->c:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 1

    iget v0, p0, Li/k;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Li/k;->e:Ljava/lang/Object;

    check-cast p0, Lk/I1;

    iget-object p0, p0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Li/k;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/k;->c:Z

    iget-object p0, p0, Li/k;->e:Ljava/lang/Object;

    check-cast p0, Li/l;

    iget-object p0, p0, Li/l;->d:LJ/b0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, LJ/b0;->g()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
