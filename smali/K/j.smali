.class public LK/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN0/b;


# static fields
.field public static d:LK/j;


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LK/i;

    invoke-direct {p1, p0}, LK/i;-><init>(LK/j;)V

    iput-object p1, p0, LK/j;->c:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/j;->c:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, LR1/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LR1/f;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LK/j;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)LK/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(I)LK/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LK/j;->c:Ljava/lang/Object;

    return-object p0
.end method
