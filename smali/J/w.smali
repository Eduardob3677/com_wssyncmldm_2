.class public final LJ/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LJ/w;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LJ/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, LJ/w;-><init>(IIII)V

    sput-object v0, LJ/w;->e:LJ/w;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LJ/w;->c:I

    iput p2, p0, LJ/w;->a:I

    iput p3, p0, LJ/w;->d:I

    iput p4, p0, LJ/w;->b:I

    return-void
.end method

.method public static a(IIII)LJ/w;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, LJ/w;->e:LJ/w;

    return-object p0

    :cond_0
    new-instance v0, LJ/w;

    invoke-direct {v0, p0, p1, p2, p3}, LJ/w;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, LJ/w;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LJ/w;

    iget v2, p0, LJ/w;->b:I

    iget v3, p1, LJ/w;->b:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, LJ/w;->c:I

    iget v3, p1, LJ/w;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, LJ/w;->d:I

    iget v3, p1, LJ/w;->d:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget p0, p0, LJ/w;->a:I

    iget p1, p1, LJ/w;->a:I

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, LJ/w;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LJ/w;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LJ/w;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LJ/w;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtraInsets{left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LJ/w;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LJ/w;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LJ/w;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LJ/w;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
