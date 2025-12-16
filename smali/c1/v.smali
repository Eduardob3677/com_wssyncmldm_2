.class public final Lc1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/v;->c:Landroid/content/Intent;

    iput-object p2, p0, Lc1/v;->d:Landroid/app/Activity;

    const/4 p1, 0x2

    iput p1, p0, Lc1/v;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    :try_start_0
    iget-object p2, p0, Lc1/v;->c:Landroid/content/Intent;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lc1/v;->d:Landroid/app/Activity;

    iget p0, p0, Lc1/v;->e:I

    invoke-virtual {v0, p2, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "DialogRedirect"

    const-string v0, "Failed to start resolution intent"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw p0
.end method
