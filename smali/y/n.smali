.class public final Ly/n;
.super LK3/c;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/CharSequence;


# virtual methods
.method public final K0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, LK3/c;->K0(Landroid/os/Bundle;)V

    return-void
.end method

.method public final L0(Lcom/google/firebase/messaging/p;)V
    .locals 1

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    iget-object p1, p1, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast p1, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object p0, p0, Ly/n;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    return-void
.end method

.method public final M0()Ljava/lang/String;
    .locals 0

    const-string p0, "androidx.core.app.NotificationCompat$BigTextStyle"

    return-object p0
.end method
