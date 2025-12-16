.class public final Landroidx/lifecycle/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/lifecycle/q;)Landroidx/lifecycle/p;
    .locals 1

    const-string v0, "state"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/p;->ON_PAUSE:Landroidx/lifecycle/p;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/p;->ON_STOP:Landroidx/lifecycle/p;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/p;->ON_DESTROY:Landroidx/lifecycle/p;

    :goto_0
    return-object p0
.end method

.method public static b(Landroidx/lifecycle/q;)Landroidx/lifecycle/p;
    .locals 1

    const-string v0, "state"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/p;->ON_RESUME:Landroidx/lifecycle/p;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/p;->ON_START:Landroidx/lifecycle/p;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/p;->ON_CREATE:Landroidx/lifecycle/p;

    :goto_0
    return-object p0
.end method

.method public static c(Landroidx/lifecycle/q;)Landroidx/lifecycle/p;
    .locals 1

    const-string v0, "state"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/p;->ON_RESUME:Landroidx/lifecycle/p;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/p;->ON_START:Landroidx/lifecycle/p;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/p;->ON_CREATE:Landroidx/lifecycle/p;

    :goto_0
    return-object p0
.end method
