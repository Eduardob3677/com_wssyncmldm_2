.class public final synthetic Lcom/idm/network/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public final synthetic a:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public synthetic constructor <init>(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/network/a;->a:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/network/a;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {p0, p1, p2}, Lcom/idm/network/IDMNetworkHttpAdapter;->b(Ljavax/net/ssl/HostnameVerifier;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method
