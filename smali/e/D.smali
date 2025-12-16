.class public final synthetic Le/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/e;


# instance fields
.field public final synthetic c:Le/k;


# direct methods
.method public synthetic constructor <init>(Le/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/D;->c:Le/k;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Le/D;->c:Le/k;

    invoke-virtual {p0, p1}, Le/k;->i(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
