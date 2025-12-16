.class public abstract LZ0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[LZ0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, LZ0/m;

    const-string v3, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    invoke-static {v3}, LZ0/k;->s(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3, v1}, LZ0/m;-><init>([BI)V

    new-instance v3, LZ0/m;

    const-string v4, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    invoke-static {v4}, LZ0/k;->s(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, v0}, LZ0/m;-><init>([BI)V

    const/4 v4, 0x2

    new-array v4, v4, [LZ0/k;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    sput-object v4, LZ0/n;->a:[LZ0/k;

    return-void
.end method
