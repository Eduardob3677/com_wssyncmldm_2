.class public final Lu3/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lu3/F;

.field public static final b:LI2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/F;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu3/F;->a:Lu3/F;

    new-instance v0, LI2/a;

    const-string v1, "PackageViewDescriptorFactory"

    invoke-direct {v0, v1}, LI2/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu3/F;->b:LI2/a;

    return-void
.end method
