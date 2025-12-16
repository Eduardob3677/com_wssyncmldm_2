.class public final synthetic Lx0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lx0/d;


# direct methods
.method public synthetic constructor <init>(Lx0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/a;->a:Lx0/d;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/w;Landroidx/lifecycle/p;)V
    .locals 0

    iget-object p0, p0, Lx0/a;->a:Lx0/d;

    const-string p1, "this$0"

    invoke-static {p1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Landroidx/lifecycle/p;->ON_START:Landroidx/lifecycle/p;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx0/d;->f:Z

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/p;->ON_STOP:Landroidx/lifecycle/p;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lx0/d;->f:Z

    :cond_1
    :goto_0
    return-void
.end method
