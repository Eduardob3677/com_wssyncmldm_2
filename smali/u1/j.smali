.class public abstract Lu1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LL0/i;

.field public static final b:Le/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL0/i;

    invoke-direct {v0}, LL0/i;-><init>()V

    sput-object v0, Lu1/j;->a:LL0/i;

    new-instance v0, Le/J;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/J;-><init>(I)V

    sput-object v0, Lu1/j;->b:Le/J;

    return-void
.end method
