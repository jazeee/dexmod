.class final Lcom/samsung/android/sdk/healthdata/ai;
.super Ljava/lang/Object;
.source "HealthResultHolder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2224
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 220
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 220
    .line 1229
    new-array v0, p1, [Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 220
    return-object v0
.end method
