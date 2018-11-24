.class final Lcom/samsung/android/sdk/healthdata/r;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5268
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->values()[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    .line 3265
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3265
    .line 4273
    new-array v0, p1, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3265
    return-object v0
.end method
