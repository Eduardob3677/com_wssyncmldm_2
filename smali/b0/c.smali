.class public final Lb0/c;
.super Lb0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lb0/a;->b:Lb0/a;

    invoke-direct {p0, v0}, Lb0/c;-><init>(Lb0/b;)V

    return-void
.end method

.method public constructor <init>(Lb0/b;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lb0/b;-><init>()V

    iget-object p0, p0, Lb0/b;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lb0/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
