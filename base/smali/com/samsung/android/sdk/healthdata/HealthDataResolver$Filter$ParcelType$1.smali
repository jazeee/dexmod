.class final enum Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$1;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
.source "HealthDataResolver.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3212
    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    .prologue
    .line 3215
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
