.class public Landroidx/profileinstaller/ProfileInstallerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LA0/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, LA/o;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v0}, Lh0/h;->a(Ljava/lang/Runnable;)V

    new-instance p0, LZ0/h;

    const/16 p1, 0xe

    invoke-direct {p0, p1}, LZ0/h;-><init>(I)V

    return-object p0
.end method
