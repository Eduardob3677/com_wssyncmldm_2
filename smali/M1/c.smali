.class public final LM1/c;
.super LZ0/j;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/text/TextPaint;

.field public final synthetic d:LZ0/j;

.field public final synthetic e:LM1/d;


# direct methods
.method public constructor <init>(LM1/d;Landroid/content/Context;Landroid/text/TextPaint;LZ0/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM1/c;->e:LM1/d;

    iput-object p2, p0, LM1/c;->b:Landroid/content/Context;

    iput-object p3, p0, LM1/c;->c:Landroid/text/TextPaint;

    iput-object p4, p0, LM1/c;->d:LZ0/j;

    return-void
.end method


# virtual methods
.method public final W(I)V
    .locals 0

    iget-object p0, p0, LM1/c;->d:LZ0/j;

    invoke-virtual {p0, p1}, LZ0/j;->W(I)V

    return-void
.end method

.method public final X(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, LM1/c;->c:Landroid/text/TextPaint;

    iget-object v1, p0, LM1/c;->e:LM1/d;

    iget-object v2, p0, LM1/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, LM1/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object p0, p0, LM1/c;->d:LZ0/j;

    invoke-virtual {p0, p1, p2}, LZ0/j;->X(Landroid/graphics/Typeface;Z)V

    return-void
.end method
