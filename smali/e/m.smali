.class public final Le/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b;


# instance fields
.field public final synthetic a:Le/n;


# direct methods
.method public constructor <init>(Le/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m;->a:Le/n;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Le/m;->a:Le/n;

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p1

    invoke-virtual {p1}, Le/r;->a()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lx0/d;

    move-result-object p0

    const-string v0, "androidx:appcompat"

    invoke-virtual {p0, v0}, Lx0/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Le/r;->f()V

    return-void
.end method
