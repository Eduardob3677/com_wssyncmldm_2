.class public final Li4/a;
.super Lh4/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Li4/b;

.field public final synthetic b:Lh4/V;


# direct methods
.method public constructor <init>(Li4/b;Lh4/V;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/a;->a:Li4/b;

    iput-object p2, p0, Li4/a;->b:Lh4/V;

    return-void
.end method


# virtual methods
.method public final x(Lh4/I;Lk4/c;)Lk4/d;
    .locals 1

    const-string v0, "state"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "type"

    invoke-static {p1, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Li4/a;->a:Li4/b;

    invoke-interface {p1, p2}, Li4/b;->o(Lk4/c;)Lh4/z;

    move-result-object p2

    const/4 v0, 0x1

    iget-object p0, p0, Li4/a;->b:Lh4/V;

    invoke-virtual {p0, v0, p2}, Lh4/V;->h(ILh4/v;)Lh4/v;

    move-result-object p0

    invoke-interface {p1, p0}, Li4/b;->Z(Lk4/c;)Lh4/z;

    move-result-object p0

    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    return-object p0
.end method
