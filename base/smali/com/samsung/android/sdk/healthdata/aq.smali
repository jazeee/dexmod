.class public interface abstract Lcom/samsung/android/sdk/healthdata/aq;
.super Ljava/lang/Object;
.source "IDeviceManager.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract changeDeviceName(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getAllRegisteredDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
.end method

.method public abstract getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalDevice()Lcom/samsung/android/sdk/healthdata/HealthDevice;
.end method

.method public abstract getRegisteredDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
.end method

.method public abstract getRegisteredDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
.end method

.method public abstract registerDevice(Lcom/samsung/android/sdk/healthdata/HealthDevice;)Ljava/lang/String;
.end method
