.class public final Ll3/i;
.super Ll3/r0;
.source "SourceFile"


# instance fields
.field public final d:LP3/e;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(LP3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/i;->d:LP3/e;

    invoke-virtual {p1}, LP3/e;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll3/i;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll3/i;->e:Ljava/lang/String;

    return-object p0
.end method
