.class public final synthetic Lq1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/d;


# static fields
.field public static final synthetic b:Lq1/n;

.field public static final synthetic c:Lq1/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lq1/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq1/n;-><init>(I)V

    sput-object v0, Lq1/n;->b:Lq1/n;

    new-instance v0, Lq1/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq1/n;-><init>(I)V

    sput-object v0, Lq1/n;->c:Lq1/n;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lq1/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lq1/n;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Le2/e;

    new-instance p0, Le2/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Couldn\'t find encoder for type "

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Le2/e;

    sget-object p0, Lq1/o;->f:Ljava/nio/charset/Charset;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lq1/o;->g:Le2/c;

    invoke-interface {p2, v0, p0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/o;->h:Le2/c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
