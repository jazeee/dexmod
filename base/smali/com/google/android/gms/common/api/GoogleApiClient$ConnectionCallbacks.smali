.class public interface abstract Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.super Ljava/lang/Object;


# static fields
.field public static final CAUSE_NETWORK_LOST:I = 0x2

.field public static final CAUSE_SERVICE_DISCONNECTED:I = 0x1


# virtual methods
.method public abstract onConnected(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onConnectionSuspended(I)V
.end method
