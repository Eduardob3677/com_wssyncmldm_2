.class public final LR3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final c:I

.field public final d:LR3/T;

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(ILR3/T;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LR3/o;->c:I

    iput-object p2, p0, LR3/o;->d:LR3/T;

    iput-boolean p3, p0, LR3/o;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, LR3/o;->f:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LR3/o;

    iget p0, p0, LR3/o;->c:I

    iget p1, p1, LR3/o;->c:I

    sub-int/2addr p0, p1

    return p0
.end method
