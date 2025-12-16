.class public final synthetic Lcom/idm/fotaagent/restapi/restclient/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/restapi/restclient/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/restapi/restclient/a;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/idm/network/IDMNetworkHttpAdapter;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/idm/fotaagent/restapi/restclient/BaseRestClient;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
