.class public final LB3/h;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# static fields
.field public static final d:LB3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB3/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, LB3/h;->d:LB3/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    sget-object p0, LB3/e;->a:LQ3/f;

    new-instance v0, LV3/v;

    const-string v1, "Deprecated in Java"

    invoke-direct {v0, v1}, LV3/g;-><init>(Ljava/lang/Object;)V

    new-instance v1, LQ2/e;

    invoke-direct {v1, p0, v0}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, LR2/z;->z1(LQ2/e;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
