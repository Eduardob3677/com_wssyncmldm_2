.class public final LA3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LA3/v;


# instance fields
.field public final a:LA3/x;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LA3/v;

    sget-object v1, LA3/s;->a:LQ3/c;

    sget-object v1, LQ2/b;->f:LQ2/b;

    const-string v2, "configuredKotlinVersion"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, LA3/s;->d:LA3/t;

    iget-object v3, v2, LA3/t;->b:LQ2/b;

    if-eqz v3, :cond_0

    iget v3, v3, LQ2/b;->e:I

    iget v1, v1, LQ2/b;->e:I

    sub-int/2addr v3, v1

    if-gtz v3, :cond_0

    iget-object v1, v2, LA3/t;->c:LA3/E;

    goto :goto_0

    :cond_0
    iget-object v1, v2, LA3/t;->a:LA3/E;

    :goto_0
    const-string v2, "globalReportLevel"

    invoke-static {v2, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, LA3/E;->d:LA3/E;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    new-instance v3, LA3/x;

    invoke-direct {v3, v1, v2}, LA3/x;-><init>(LA3/E;LA3/E;)V

    sget-object v1, LA3/u;->l:LA3/u;

    invoke-direct {v0, v3}, LA3/v;-><init>(LA3/x;)V

    sput-object v0, LA3/v;->c:LA3/v;

    return-void
.end method

.method public constructor <init>(LA3/x;)V
    .locals 1

    sget-object v0, LA3/u;->l:LA3/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA3/v;->a:LA3/x;

    iget-boolean p1, p1, LA3/x;->d:Z

    if-nez p1, :cond_1

    sget-object p1, LA3/s;->a:LQ3/c;

    invoke-virtual {v0, p1}, LA3/u;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LA3/E;->c:LA3/E;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, LA3/v;->b:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaTypeEnhancementState(jsr305="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LA3/v;->a:LA3/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", getReportLevelForAnnotation="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, LA3/u;->l:LA3/u;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
