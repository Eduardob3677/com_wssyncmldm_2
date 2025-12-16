.class public final La2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:La2/k;


# instance fields
.field public final a:La2/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La2/k;

    invoke-direct {v0}, La2/k;-><init>()V

    sput-object v0, La2/k;->b:La2/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, La2/g;->b:La2/g;

    sget-object v1, La2/n;->b:La2/n;

    if-nez v1, :cond_0

    new-instance v1, La2/n;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, La2/n;->b:La2/n;

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La2/k;->a:La2/g;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const-string v0, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->d:I

    const-string v1, "statusCode"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "statusMessage"

    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->e:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "timestamp"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
