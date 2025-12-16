.class public final La2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LA/d;


# instance fields
.field public volatile a:J

.field public volatile b:J

.field public final c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

.field public final d:LG/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA/d;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "TokenRefresher"

    invoke-direct {v0, v2, v1}, LA/d;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, La2/c;->e:LA/d;

    return-void
.end method

.method public constructor <init>(LW1/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, La2/c;->e:LA/d;

    const-string v2, "Initializing TokenRefresher"

    invoke-virtual {v1, v2, v0}, LA/d;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TokenRefresher"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Q1;-><init>(Landroid/os/Looper;I)V

    iput-object v1, p0, La2/c;->c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    new-instance v0, LG/a;

    invoke-virtual {p1}, LW1/g;->a()V

    iget-object p1, p1, LW1/g;->b:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, LG/a;-><init>(La2/c;Ljava/lang/String;)V

    iput-object v0, p0, La2/c;->d:LG/a;

    return-void
.end method
