.class Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$UsingMetadataFile;
.super Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingMetadataFile"
.end annotation


# static fields
.field static final METADATA_FILE_NAME:Ljava/lang/String; = "META-INF/com/android/metadata"

.field static final OTA_PROPERTY_FILES:Ljava/lang/String; = "ota-property-files"

.field private static final PAYLOAD_METADATA:Ljava/lang/String; = "payload_metadata.bin"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$1;)V

    return-void
.end method

.method private updateAttribute([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->attributes:Ljava/util/Map;

    const-string v3, "OFFSET"

    aget-object v0, p1, v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->attributes:Ljava/util/Map;

    const-string v0, "METADATA_FILE_SIZE"

    aget-object p1, p1, v1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;

    const-string p1, "METADATA_SIZE should not be empty"

    invoke-direct {p0, p1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;

    const-string p1, "offset should not be empty"

    invoke-direct {p0, p1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 0

    const-string p0, "META-INF/com/android/metadata"

    return-object p0
.end method

.method public needsIgnore(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ota-property-files"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public parseAndUpdate([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v1

    const-string v5, "payload_metadata.bin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$UsingMetadataFile;->updateAttribute([Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Should not reach here. Please check delta file"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;

    const-string p1, "wrong delta file"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/exception/LocalTestResetRequiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
