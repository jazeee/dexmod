.class public interface abstract Lcom/samsung/android/sdk/healthdata/at;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getConnectionResult(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getConnectionResult2(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getIDataResolver()Lcom/samsung/android/sdk/healthdata/ak;
.end method

.method public abstract getIDataWatcher()Lcom/samsung/android/sdk/healthdata/an;
.end method

.method public abstract getIDeviceManager()Lcom/samsung/android/sdk/healthdata/aq;
.end method

.method public abstract getUserProfile()Landroid/os/Bundle;
.end method

.method public abstract getUserProfile2(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract isHealthDataPermissionAcquired(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract isHealthDataPermissionAcquired2(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract isKeyAccessible()Z
.end method

.method public abstract requestHealthDataPermissions(Landroid/os/Bundle;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end method

.method public abstract requestHealthDataPermissions2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Landroid/os/Bundle;)Landroid/content/Intent;
.end method

.method public abstract waitForInit(J)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end method

.method public abstract waitForInit2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;J)V
.end method
