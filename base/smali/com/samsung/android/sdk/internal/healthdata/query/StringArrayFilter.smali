.class public Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.source "StringArrayFilter.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 31
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->STRING_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->b:[Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->b:[Ljava/lang/String;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->b:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 52
    return-void
.end method
