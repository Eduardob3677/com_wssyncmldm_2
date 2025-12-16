.class abstract Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$UsingPropertiesFile;,
        Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$UsingMetadataFile;
    }
.end annotation


# instance fields
.field protected final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deltaPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->deltaPath:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->attributes:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private parse()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->deltaPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "="

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-ne v5, v4, :cond_2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    aget-object v5, v3, v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->needsIgnore(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->parseAndUpdate([Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_6
    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_7

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_7
    const-string v1, ""

    invoke-direct {v0, v1, p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseAll(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$UsingPropertiesFile;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$UsingPropertiesFile;-><init>(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->parse()V

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$UsingMetadataFile;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$UsingMetadataFile;-><init>(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->parse()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->getAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract needsIgnore(Ljava/lang/String;)Z
.end method

.method public abstract parseAndUpdate([Ljava/lang/String;)V
.end method
