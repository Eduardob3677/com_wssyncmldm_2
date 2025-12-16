.class public final Landroidx/lifecycle/s;
.super Landroidx/lifecycle/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget p0, Landroidx/lifecycle/O;->c:I

    invoke-static {p1}, Landroidx/lifecycle/S;->g(Landroid/app/Activity;)V

    return-void
.end method
