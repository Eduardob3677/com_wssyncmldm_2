.class public Lcom/samsung/android/knox/location/CircularGeofence;
.super Lcom/samsung/android/knox/location/Geofence;
.source "SourceFile"


# instance fields
.field public center:Lcom/samsung/android/knox/location/LatLongPoint;

.field public radius:D


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/location/LatLongPoint;D)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/location/Geofence;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
