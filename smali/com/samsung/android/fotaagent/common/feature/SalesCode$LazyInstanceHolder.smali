.class Lcom/samsung/android/fotaagent/common/feature/SalesCode$LazyInstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/feature/SalesCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyInstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/fotaagent/common/feature/SalesCode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;-><init>(Lcom/samsung/android/fotaagent/common/feature/SalesCode$1;)V

    sput-object v0, Lcom/samsung/android/fotaagent/common/feature/SalesCode$LazyInstanceHolder;->INSTANCE:Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/samsung/android/fotaagent/common/feature/SalesCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/feature/SalesCode$LazyInstanceHolder;->INSTANCE:Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    return-object v0
.end method
