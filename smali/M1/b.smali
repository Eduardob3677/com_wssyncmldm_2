.class public final LM1/b;
.super LA/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:LZ0/j;

.field public final synthetic f:LM1/d;


# direct methods
.method public constructor <init>(LM1/d;LZ0/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM1/b;->f:LM1/d;

    iput-object p2, p0, LM1/b;->e:LZ0/j;

    return-void
.end method


# virtual methods
.method public final h(I)V
    .locals 2

    iget-object v0, p0, LM1/b;->f:LM1/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, LM1/d;->m:Z

    iget-object p0, p0, LM1/b;->e:LZ0/j;

    invoke-virtual {p0, p1}, LZ0/j;->W(I)V

    return-void
.end method

.method public final i(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, LM1/b;->f:LM1/d;

    iget v1, v0, LM1/d;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, LM1/d;->n:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, LM1/d;->m:Z

    iget-object p1, v0, LM1/d;->n:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object p0, p0, LM1/b;->e:LZ0/j;

    invoke-virtual {p0, p1, v0}, LZ0/j;->X(Landroid/graphics/Typeface;Z)V

    return-void
.end method
