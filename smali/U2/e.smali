.class public final LU2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/d;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:LU2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LU2/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LU2/e;->c:LU2/e;

    return-void
.end method


# virtual methods
.method public final a(LU2/b;)LU2/c;
    .locals 0

    const-string p0, "key"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptyCoroutineContext"

    return-object p0
.end method
