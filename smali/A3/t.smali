.class public final LA3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LA3/t;


# instance fields
.field public final a:LA3/E;

.field public final b:LQ2/b;

.field public final c:LA3/E;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA3/t;

    sget-object v1, LA3/E;->e:LA3/E;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LA3/t;-><init>(LA3/E;I)V

    sput-object v0, LA3/t;->d:LA3/t;

    return-void
.end method

.method public constructor <init>(LA3/E;I)V
    .locals 1

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    new-instance p2, LQ2/b;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, LQ2/b;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p1}, LA3/t;-><init>(LA3/E;LQ2/b;LA3/E;)V

    return-void
.end method

.method public constructor <init>(LA3/E;LQ2/b;LA3/E;)V
    .locals 1

    const-string v0, "reportLevelAfter"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/t;->a:LA3/E;

    iput-object p2, p0, LA3/t;->b:LQ2/b;

    iput-object p3, p0, LA3/t;->c:LA3/E;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LA3/t;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LA3/t;

    iget-object v1, p1, LA3/t;->a:LA3/E;

    iget-object v3, p0, LA3/t;->a:LA3/E;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, LA3/t;->b:LQ2/b;

    iget-object v3, p1, LA3/t;->b:LQ2/b;

    invoke-static {v1, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, LA3/t;->c:LA3/E;

    iget-object p1, p1, LA3/t;->c:LA3/E;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LA3/t;->a:LA3/E;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LA3/t;->b:LQ2/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v1, LQ2/b;->e:I

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, LA3/t;->c:LA3/E;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaNullabilityAnnotationsStatus(reportLevelBefore="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LA3/t;->a:LA3/E;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sinceVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LA3/t;->b:LQ2/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reportLevelAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LA3/t;->c:LA3/E;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
