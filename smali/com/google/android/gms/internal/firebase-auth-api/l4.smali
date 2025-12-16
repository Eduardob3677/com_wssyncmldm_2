.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/l4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/b;

.field public static final b:Lo/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/l4;->a:Lo/b;

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/l4;->b:Lo/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/l4;->a:Lo/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "https://"

    const-string v0, "www.googleapis.com/identitytoolkit/v3/relyingparty"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
