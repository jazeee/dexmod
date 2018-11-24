.class public Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.source "OrFilter.java"


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;->checkFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    .line 31
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 32
    invoke-static {v2}, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;->checkFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->OR:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;->mFilters:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;->mFilters:Ljava/util/List;

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 53
    return-void
.end method
