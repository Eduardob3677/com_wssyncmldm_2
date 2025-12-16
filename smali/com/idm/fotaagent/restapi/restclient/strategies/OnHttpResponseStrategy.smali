.class public interface abstract Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DO_NOTHING:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

.field public static final PARSE_FOR_FAILURE:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

.field public static final PARSE_FOR_SUCCESS:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

.field public static final STORE_BODY:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

.field public static final STORE_RESULT_FROM_RESPONSE_CODE:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->DO_NOTHING:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    new-instance v0, LE2/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->PARSE_FOR_SUCCESS:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    new-instance v0, LE2/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->PARSE_FOR_FAILURE:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    new-instance v0, LE2/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->STORE_BODY:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    new-instance v0, LE2/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->STORE_RESULT_FROM_RESPONSE_CODE:Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;

    return-void
.end method

.method public static synthetic a(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->lambda$static$3(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void
.end method

.method public static castResponse(Lcom/idm/fotaagent/restapi/response/Response;Ljava/lang/Class;)Lcom/idm/fotaagent/restapi/response/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/idm/fotaagent/restapi/response/Response;",
            ">(",
            "Lcom/idm/fotaagent/restapi/response/Response;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/restapi/response/Response;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static checkParser(Lcom/idm/fotaagent/restapi/parser/XmlParser;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "parser is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->lambda$static$1(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void
.end method

.method public static synthetic i(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->lambda$static$4(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$static$1(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->read(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->checkParser(Lcom/idm/fotaagent/restapi/parser/XmlParser;)V

    const-class v1, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-static {p2, v1}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->castResponse(Lcom/idm/fotaagent/restapi/response/Response;Ljava/lang/Class;)Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object p2

    check-cast p2, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->parseForSuccess(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->setAttributes(Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/idm/fotaagent/restapi/exception/XmlParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;

    invoke-direct {p1, p0, v0}, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;-><init>(Ljava/lang/Throwable;Z)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;

    invoke-direct {p1, p0, v0}, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;-><init>(Ljava/lang/Throwable;Z)V

    throw p1
.end method

.method private static synthetic lambda$static$2(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->read(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->checkParser(Lcom/idm/fotaagent/restapi/parser/XmlParser;)V

    const-class v1, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;

    invoke-static {p2, v1}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->castResponse(Lcom/idm/fotaagent/restapi/response/Response;Ljava/lang/Class;)Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object p2

    check-cast p2, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->parseForError(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->setAttributes(Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/response/Result;->getResultFrom(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/idm/fotaagent/restapi/response/Response;->setResult(Lcom/idm/fotaagent/restapi/response/Result;)V
    :try_end_1
    .catch Lcom/idm/fotaagent/restapi/exception/XmlParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;

    invoke-direct {p1, p0, v0}, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;-><init>(Ljava/lang/Throwable;Z)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;

    invoke-direct {p1, p0, v0}, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;-><init>(Ljava/lang/Throwable;Z)V

    throw p1
.end method

.method private static synthetic lambda$static$3(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->read(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/idm/fotaagent/restapi/response/Response$WithBody;

    invoke-static {p2, p1}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->castResponse(Lcom/idm/fotaagent/restapi/response/Response;Ljava/lang/Class;)Lcom/idm/fotaagent/restapi/response/Response;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/restapi/response/Response$WithBody;

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/restapi/response/Response$WithBody;->setBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static synthetic lambda$static$4(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/response/Result;->getResultFrom(I)Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/idm/fotaagent/restapi/response/Response;->setResult(Lcom/idm/fotaagent/restapi/response/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic q(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->lambda$static$2(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void
.end method

.method public static read(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_2
    :try_start_3
    const-string p0, "message is empty."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty body"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic x(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/restapi/restclient/strategies/OnHttpResponseStrategy;->lambda$static$0(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V

    return-void
.end method


# virtual methods
.method public abstract parse(Ljava/net/HttpURLConnection;Lcom/idm/fotaagent/restapi/parser/XmlParser;Lcom/idm/fotaagent/restapi/response/Response;)V
.end method
