.class public final Lm2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LK3/b;

    invoke-direct {v0}, LK3/b;-><init>()V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, LK3/b;->g:Ljava/io/Serializable;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LK3/b;->b(I)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LK3/b;->f:Ljava/io/Serializable;

    invoke-virtual {v0}, LK3/b;->a()Lm2/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm2/a;->a:Ljava/lang/String;

    iput p2, p0, Lm2/a;->b:I

    iput-object p3, p0, Lm2/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lm2/a;->d:Ljava/lang/String;

    iput-wide p5, p0, Lm2/a;->e:J

    iput-wide p7, p0, Lm2/a;->f:J

    iput-object p9, p0, Lm2/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()LK3/b;
    .locals 3

    new-instance v0, LK3/b;

    invoke-direct {v0}, LK3/b;-><init>()V

    iget-object v1, p0, Lm2/a;->a:Ljava/lang/String;

    iput-object v1, v0, LK3/b;->b:Ljava/lang/String;

    iget v1, p0, Lm2/a;->b:I

    iput v1, v0, LK3/b;->c:I

    iget-object v1, p0, Lm2/a;->c:Ljava/lang/String;

    iput-object v1, v0, LK3/b;->d:Ljava/lang/Object;

    iget-object v1, p0, Lm2/a;->d:Ljava/lang/String;

    iput-object v1, v0, LK3/b;->e:Ljava/lang/Object;

    iget-wide v1, p0, Lm2/a;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LK3/b;->f:Ljava/io/Serializable;

    iget-wide v1, p0, Lm2/a;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LK3/b;->g:Ljava/io/Serializable;

    iget-object p0, p0, Lm2/a;->g:Ljava/lang/String;

    iput-object p0, v0, LK3/b;->h:Ljava/io/Serializable;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lm2/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p1, Lm2/a;

    iget-object v1, p0, Lm2/a;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lm2/a;->a:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lm2/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget v1, p1, Lm2/a;->b:I

    iget v3, p0, Lm2/a;->b:I

    invoke-static {v3, v1}, Lk/Q0;->b(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lm2/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lm2/a;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p1, Lm2/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lm2/a;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-wide v3, p0, Lm2/a;->e:J

    iget-wide v5, p1, Lm2/a;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Lm2/a;->f:J

    iget-wide v5, p1, Lm2/a;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object p1, p1, Lm2/a;->g:Ljava/lang/String;

    iget-object p0, p0, Lm2/a;->g:Ljava/lang/String;

    if-nez p0, :cond_4

    if-nez p1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0

    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lm2/a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v1, v2

    mul-int/2addr v1, v2

    iget v3, p0, Lm2/a;->b:I

    invoke-static {v3}, Lk/Q0;->f(I)I

    move-result v3

    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lm2/a;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lm2/a;->d:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-wide v3, p0, Lm2/a;->e:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v3, v3

    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-wide v3, p0, Lm2/a;->f:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lm2/a;->g:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    xor-int p0, v1, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersistedInstallationEntry{firebaseInstallationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lm2/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm2/a;->b:I

    invoke-static {v1}, Lh0/c;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm2/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lm2/a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCreationEpochInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lm2/a;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fisError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm2/a;->g:Ljava/lang/String;

    const-string v1, "}"

    invoke-static {v0, p0, v1}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
