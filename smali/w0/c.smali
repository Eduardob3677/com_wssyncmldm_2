.class public final Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lw0/c;->c:I

    iput p4, p0, Lw0/c;->d:I

    iput-object p1, p0, Lw0/c;->e:Ljava/lang/String;

    iput-object p3, p0, Lw0/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lw0/c;

    iget v0, p1, Lw0/c;->c:I

    iget v1, p0, Lw0/c;->c:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    iget p0, p0, Lw0/c;->d:I

    iget p1, p1, Lw0/c;->d:I

    sub-int v1, p0, p1

    :cond_0
    return v1
.end method
