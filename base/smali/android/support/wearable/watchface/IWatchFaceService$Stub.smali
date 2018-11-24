.class public abstract Landroid/support/wearable/watchface/IWatchFaceService$Stub;
.super Landroid/os/Binder;
.source "IWatchFaceService.java"

# interfaces
.implements Landroid/support/wearable/watchface/IWatchFaceService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.wearable.watchface.IWatchFaceService"

.field static final TRANSACTION_setStyle:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.support.wearable.watchface.IWatchFaceService"

    invoke-virtual {p0, p0, v0}, Landroid/support/wearable/watchface/IWatchFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/wearable/watchface/IWatchFaceService;
    .locals 2

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, "android.support.wearable.watchface.IWatchFaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/wearable/watchface/IWatchFaceService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/support/wearable/watchface/IWatchFaceService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/support/wearable/watchface/IWatchFaceService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/IWatchFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "android.support.wearable.watchface.IWatchFaceService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "android.support.wearable.watchface.IWatchFaceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/support/wearable/watchface/WatchFaceStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/watchface/WatchFaceStyle;

    .line 60
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/wearable/watchface/IWatchFaceService$Stub;->setStyle(Landroid/support/wearable/watchface/WatchFaceStyle;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 62
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
