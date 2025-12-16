.class Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$UsingPropertiesFile;
.super Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingPropertiesFile"
.end annotation


# static fields
.field static final PROPERTIES_FILE_NAME:Ljava/lang/String; = "payload_properties.txt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser$1;)V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 0

    const-string p0, "payload_properties.txt"

    return-object p0
.end method

.method public needsIgnore(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public parseAndUpdate([Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/abenabler/ui/admin/main/hidden/command/AttributeParser;->attributes:Ljava/util/Map;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
