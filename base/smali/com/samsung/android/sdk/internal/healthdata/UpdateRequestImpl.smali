.class public final Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;
.super Ljava/lang/Object;
.source "UpdateRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sdk/healthdata/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/samsung/android/sdk/healthdata/HealthData;

.field private final c:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/y;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/y;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->d:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->a:Ljava/lang/String;

    .line 50
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->b:Lcom/samsung/android/sdk/healthdata/HealthData;

    .line 51
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->c:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->d:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthData;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->d:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->b:Lcom/samsung/android/sdk/healthdata/HealthData;

    .line 44
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->c:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 45
    iput-object p4, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->d:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public final getDataObject()Lcom/samsung/android/sdk/healthdata/HealthData;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->b:Lcom/samsung/android/sdk/healthdata/HealthData;

    return-object v0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getFilter()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->c:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->b:Lcom/samsung/android/sdk/healthdata/HealthData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->c:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 67
    return-void
.end method
