.class public abstract La2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GetTokenResultFactory"

    invoke-direct {v0, v2, v1}, LA/d;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, La2/d;->a:LA/d;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ls2/c;
    .locals 3

    :try_start_0
    invoke-static {p0}, La2/e;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/F2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, La2/d;->a:LA/d;

    const-string v2, "Error parsing token claims"

    invoke-virtual {v1, v2, p0, v0}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    new-instance v0, Ls2/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Ls2/c;->c:Ljava/lang/Object;

    return-object v0
.end method
