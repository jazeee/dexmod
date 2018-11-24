.class final Lcom/samsung/android/sdk/healthdata/q;
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
        "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2989
    .line 4993
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 4994
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 4995
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4996
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->a(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    move-result-object v0

    .line 2989
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2989
    .line 4001
    new-array v0, p1, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 2989
    return-object v0
.end method
