.class public final Lcom/google/android/gms/internal/firebase-auth-api/j4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/util/ArrayList;

.field public final c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/concurrent/ScheduledFuture;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->g:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->a:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->c:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/j4;->b:Ljava/util/ArrayList;

    return-void
.end method
