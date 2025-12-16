.class public final La2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final d:La2/i;


# instance fields
.field public final c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La2/i;

    invoke-direct {v0}, La2/i;-><init>()V

    sput-object v0, La2/i;->d:La2/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Q1;-><init>(Landroid/os/Looper;I)V

    iput-object v0, p0, La2/i;->c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, La2/i;->c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
