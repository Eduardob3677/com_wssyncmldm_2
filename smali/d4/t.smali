.class public final Ld4/t;
.super Lcom/google/android/gms/internal/firebase-auth-api/X;
.source "SourceFile"


# instance fields
.field public final e:LQ3/c;


# direct methods
.method public constructor <init>(LQ3/c;LN3/f;Ls2/c;Lf4/j;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeTable"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/X;-><init>(LN3/f;Ls2/c;Lr3/N;)V

    iput-object p1, p0, Ld4/t;->e:LQ3/c;

    return-void
.end method


# virtual methods
.method public final j()LQ3/c;
    .locals 0

    iget-object p0, p0, Ld4/t;->e:LQ3/c;

    return-object p0
.end method
