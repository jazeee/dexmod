.class final Landroid/support/wearable/watchface/WatchFaceStyle$1;
.super Ljava/lang/Object;
.source "WatchFaceStyle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/wearable/watchface/WatchFaceStyle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/wearable/watchface/WatchFaceStyle;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/wearable/watchface/WatchFaceStyle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/support/wearable/watchface/WatchFaceStyle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/wearable/watchface/WatchFaceStyle;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Landroid/support/wearable/watchface/WatchFaceStyle;
    .locals 1

    .prologue
    .line 303
    new-array v0, p1, [Landroid/support/wearable/watchface/WatchFaceStyle;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/support/wearable/watchface/WatchFaceStyle$1;->newArray(I)[Landroid/support/wearable/watchface/WatchFaceStyle;

    move-result-object v0

    return-object v0
.end method
