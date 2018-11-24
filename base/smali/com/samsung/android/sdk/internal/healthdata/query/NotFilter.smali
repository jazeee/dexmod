.class public Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.source "NotFilter.java"


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;->checkFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    .line 29
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NOT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;->mFilters:Ljava/util/List;

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 47
    return-void
.end method
