.class public final Le/O;
.super LZ0/j;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Le/Q;


# direct methods
.method public synthetic constructor <init>(Le/Q;I)V
    .locals 0

    iput p2, p0, Le/O;->b:I

    iput-object p1, p0, Le/O;->c:Le/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Le/O;->c:Le/Q;

    iget p0, p0, Le/O;->b:I

    packed-switch p0, :pswitch_data_0

    iput-object v0, v1, Le/Q;->s:Li/l;

    iget-object p0, v1, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_0
    iget-boolean p0, v1, Le/Q;->o:Z

    if-eqz p0, :cond_0

    iget-object p0, v1, Le/Q;->g:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, v1, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p0, v1, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p0, v1, Le/Q;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iput-object v0, v1, Le/Q;->s:Li/l;

    iget-object p0, v1, Le/Q;->k:Li/a;

    if-eqz p0, :cond_1

    iget-object v2, v1, Le/Q;->j:Le/P;

    invoke-interface {p0, v2}, Li/a;->n(Li/b;)V

    iput-object v0, v1, Le/Q;->j:Le/P;

    iput-object v0, v1, Le/Q;->k:Li/a;

    :cond_1
    iget-object p0, v1, Le/Q;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_2

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LJ/G;->c(Landroid/view/View;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
