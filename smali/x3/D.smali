.class public final Lx3/D;
.super Lx3/s;
.source "SourceFile"

# interfaces
.implements LH3/b;


# instance fields
.field public final a:Lx3/B;

.field public final b:[Ljava/lang/annotation/Annotation;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Lx3/B;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "reflectAnnotations"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/D;->a:Lx3/B;

    iput-object p2, p0, Lx3/D;->b:[Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Lx3/D;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lx3/D;->d:Z

    return-void
.end method


# virtual methods
.method public final t()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lx3/D;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Lo4/a;->h([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lx3/D;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lx3/D;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "vararg "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lx3/D;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, LQ3/f;->d(Ljava/lang/String;)LQ3/f;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx3/D;->a:Lx3/B;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(LQ3/c;)Lx3/e;
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lx3/D;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {p0, p1}, Lo4/a;->d([Ljava/lang/annotation/Annotation;LQ3/c;)Lx3/e;

    move-result-object p0

    return-object p0
.end method
