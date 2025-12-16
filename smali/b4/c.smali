.class public final Lb4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/d;


# instance fields
.field public final c:Lr3/e;


# direct methods
.method public constructor <init>(Lu3/b;)V
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4/c;->c:Lr3/e;

    return-void
.end method


# virtual methods
.method public final e()Lh4/v;
    .locals 1

    iget-object p0, p0, Lb4/c;->c:Lr3/e;

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    const-string v0, "classDescriptor.defaultType"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lb4/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lb4/c;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lb4/c;->c:Lr3/e;

    :cond_1
    iget-object p0, p0, Lb4/c;->c:Lr3/e;

    invoke-static {p0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lb4/c;->c:Lr3/e;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lb4/c;->c:Lr3/e;

    invoke-interface {p0}, Lr3/e;->q()Lh4/z;

    move-result-object p0

    const-string v1, "classDescriptor.defaultType"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
