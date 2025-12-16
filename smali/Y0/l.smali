.class public final synthetic LY0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/a;
.implements Lu1/g;


# static fields
.field public static final synthetic c:LY0/l;

.field public static final synthetic d:LY0/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LY0/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LY0/l;->c:LY0/l;

    new-instance v0, LY0/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LY0/l;->d:LY0/l;

    return-void
.end method


# virtual methods
.method public H(Lu1/h;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lu1/h;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lu1/h;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_0
    const-string p0, "Rpc"

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lu1/h;->d()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error making request: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {p1}, Lu1/h;->d()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public a(Ljava/lang/Object;)Lu1/n;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    sget p0, LY0/a;->h:I

    if-eqz p1, :cond_0

    const-string p0, "google.messenger"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lp0/a;->j(Ljava/lang/Object;)Lu1/n;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lp0/a;->j(Ljava/lang/Object;)Lu1/n;

    move-result-object p0

    :goto_0
    return-object p0
.end method
