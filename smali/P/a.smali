.class public final LP/a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:LP/b;


# direct methods
.method public constructor <init>(LP/b;)V
    .locals 0

    iput-object p1, p0, LP/a;->a:LP/b;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, LP/a;->a:LP/b;

    iget-boolean p1, p0, LP/b;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LP/b;->e:Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LP/b;->e:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    move-result p1

    iput-boolean p1, p0, LP/b;->c:Z

    :cond_0
    return-void
.end method
