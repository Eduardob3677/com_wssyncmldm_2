.class public Lcom/idm/core/xml/IDMXmlSyncmlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmSyncmlXmlDecoder(Ljava/io/InputStream;)Lcom/idm/core/syncml/SyncML;
    .locals 0

    :try_start_0
    new-instance p0, Lcom/idm/core/xml/IDMXmlSyncmlDecoder;

    invoke-direct {p0}, Lcom/idm/core/xml/IDMXmlSyncmlDecoder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlDecoder;->idmSyncmlDecode(Ljava/io/InputStream;)Lcom/idm/core/syncml/SyncML;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/exception/dm/IDMExceptionDmParsing;

    invoke-direct {p1, p0}, Lcom/idm/exception/dm/IDMExceptionDmParsing;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public idmSyncmlXmlEncoder(Lcom/idm/core/syncml/SyncML;)[B
    .locals 0

    new-instance p0, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;

    invoke-direct {p0}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/core/xml/IDMXmlSyncmlEncoder;->idmSyncmlEncode(Lcom/idm/core/syncml/SyncML;)[B

    move-result-object p0

    return-object p0
.end method
