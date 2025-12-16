.class public final Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Landroidx/fragment/app/r;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/o;->c:Landroidx/fragment/app/r;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/o;->c:Landroidx/fragment/app/r;

    invoke-static {p0}, Landroidx/fragment/app/r;->access$000(Landroidx/fragment/app/r;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/fragment/app/r;->access$000(Landroidx/fragment/app/r;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/r;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
