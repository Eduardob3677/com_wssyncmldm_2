.class public final Landroidx/picker/widget/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic c:I

.field public d:Z


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/picker/widget/B;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    iget v0, p0, Landroidx/picker/widget/B;->c:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/B;->d:Z

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/B;->d:Z

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
