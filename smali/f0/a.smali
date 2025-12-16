.class public final Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lf0/b;


# direct methods
.method public constructor <init>(Lf0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/a;->a:Lf0/b;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lf0/a;->a:Lf0/b;

    iget-object p0, p0, Lf0/b;->i:Landroidx/picker/widget/SeslTimePicker;

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-boolean p1, p1, Landroidx/picker/widget/W;->y:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePicker;->setEditTextMode(Z)V

    :cond_0
    return-void
.end method
