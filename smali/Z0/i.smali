.class public LZ0/i;
.super Landroidx/fragment/app/r;
.source "SourceFile"


# instance fields
.field public c:Landroid/app/Dialog;

.field public d:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LZ0/i;->c:Landroid/app/Dialog;

    iput-object v0, p0, LZ0/i;->d:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, LZ0/i;->d:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    iget-object p1, p0, LZ0/i;->c:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/r;->setShowsDialog(Z)V

    :cond_0
    iget-object p0, p0, LZ0/i;->c:Landroid/app/Dialog;

    return-object p0
.end method

.method public final show(Landroidx/fragment/app/Z;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/r;->show(Landroidx/fragment/app/Z;Ljava/lang/String;)V

    return-void
.end method
