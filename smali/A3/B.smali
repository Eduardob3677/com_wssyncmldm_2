.class public final LA3/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:LA3/B;

.field public static final b:LA3/D;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LA3/B;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA3/B;->a:LA3/B;

    new-instance v0, LA3/D;

    sget-object v1, LR2/v;->c:LR2/v;

    invoke-direct {v0, v1}, LA3/D;-><init>(Ljava/util/Map;)V

    sput-object v0, LA3/B;->b:LA3/D;

    return-void
.end method
