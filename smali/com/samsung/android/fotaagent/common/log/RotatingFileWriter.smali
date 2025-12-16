.class interface abstract Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;
    }
.end annotation


# static fields
.field public static final STUB:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$1;

    invoke-direct {v0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->STUB:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    return-void
.end method

.method public static clone(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;)Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;
    .locals 2

    :try_start_0
    check-cast p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->access$100(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->access$200(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;)I

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;->access$300(Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->of(Ljava/nio/file/Path;II)Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IDM_FOTA"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->STUB:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    return-object p0
.end method

.method public static of(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->of(Ljava/nio/file/Path;II)Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "IDM_FOTA"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->STUB:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    return-object p0
.end method

.method public static of(Ljava/nio/file/Path;II)Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter$Real;-><init>(Ljava/nio/file/Path;IILcom/samsung/android/fotaagent/common/log/RotatingFileWriter$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "IDM_FOTA"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;->STUB:Lcom/samsung/android/fotaagent/common/log/RotatingFileWriter;

    return-object p0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract force()V
.end method

.method public abstract isOpen()Z
.end method

.method public abstract println(Ljava/lang/String;)V
.end method
