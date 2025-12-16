.class public abstract LR0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LZ0/h;

.field public static final b:Le4/d;

.field public static final c:LP1/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LZ0/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LZ0/h;-><init>(I)V

    sput-object v0, LR0/d;->a:LZ0/h;

    new-instance v0, Le4/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Le4/d;-><init>(I)V

    sput-object v0, LR0/d;->b:Le4/d;

    new-instance v0, LP1/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    sput-object v0, LR0/d;->c:LP1/e;

    return-void
.end method
