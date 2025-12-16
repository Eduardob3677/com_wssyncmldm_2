.class public final Ly/m;
.super LK3/c;
.source "SourceFile"


# instance fields
.field public d:Landroidx/core/graphics/drawable/IconCompat;

.field public e:Landroidx/core/graphics/drawable/IconCompat;

.field public f:Z


# virtual methods
.method public final L0(Lcom/google/firebase/messaging/p;)V
    .locals 3

    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    iget-object v1, p1, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    iget-object v2, p0, Ly/m;->d:Landroidx/core/graphics/drawable/IconCompat;

    iget-object p1, p1, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {v2, p1}, LC/c;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v0, v2}, Ly/l;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    :cond_0
    iget-boolean v2, p0, Ly/m;->f:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Ly/m;->e:Landroidx/core/graphics/drawable/IconCompat;

    if-nez p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, LC/c;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-static {v0, p0}, Ly/k;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ly/l;->c(Landroid/app/Notification$BigPictureStyle;Z)V

    invoke-static {v0, v1}, Ly/l;->b(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final M0()Ljava/lang/String;
    .locals 0

    const-string p0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    return-object p0
.end method
