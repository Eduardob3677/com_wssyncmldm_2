.class public final Lcom/google/android/gms/internal/firebase-auth-api/b;
.super Lcom/google/android/gms/internal/firebase-auth-api/C;
.source "SourceFile"


# instance fields
.field public final synthetic h:Lcom/google/android/gms/internal/firebase-auth-api/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase-auth-api/n;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/b;->h:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/C;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b;->h:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    return p0
.end method

.method public final b(I)I
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b;->h:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
