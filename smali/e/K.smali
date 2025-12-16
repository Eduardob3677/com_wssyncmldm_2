.class public final Le/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/F1;
.implements Lj/g;


# instance fields
.field public final synthetic c:Le/L;


# direct methods
.method public synthetic constructor <init>(Le/L;)V
    .locals 0

    iput-object p1, p0, Le/K;->c:Le/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lj/i;)V
    .locals 3

    iget-object p0, p0, Le/K;->c:Le/L;

    iget-object v0, p0, Le/L;->a:Lk/I1;

    iget-object v0, v0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->q()Z

    move-result v0

    iget-object p0, p0, Le/L;->b:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    invoke-interface {p0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lj/i;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
