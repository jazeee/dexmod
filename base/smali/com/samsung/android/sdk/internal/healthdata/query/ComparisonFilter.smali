.class public Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.source "ComparisonFilter.java"


# instance fields
.field private a:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 33
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->COMPARABLE:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->a:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->c:Ljava/lang/Number;

    .line 38
    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->a:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->c:Ljava/lang/Number;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    const-class v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->a:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->c:Ljava/lang/Number;

    .line 50
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->a:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;->c:Ljava/lang/Number;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 58
    return-void
.end method
