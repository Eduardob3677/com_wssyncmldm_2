.class public abstract LT0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le4/d;

.field public static final b:LP1/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Le4/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Le4/d;-><init>(I)V

    sput-object v0, LT0/a;->a:Le4/d;

    new-instance v0, LP1/e;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    sput-object v0, LT0/a;->b:LP1/e;

    return-void
.end method
