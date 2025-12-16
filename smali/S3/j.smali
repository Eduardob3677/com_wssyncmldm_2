.class public final LS3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public final synthetic b:LS3/k;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LS3/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LS3/j;->b:LS3/k;

    iput-object p1, p0, LS3/j;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Li3/o;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p2, "property"

    invoke-static {p2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LS3/j;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Li3/o;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "property"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, LS3/j;->b:LS3/k;

    iget-boolean p1, p1, LS3/k;->a:Z

    if-nez p1, :cond_0

    iput-object p2, p0, LS3/j;->a:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify readonly DescriptorRendererOptions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
