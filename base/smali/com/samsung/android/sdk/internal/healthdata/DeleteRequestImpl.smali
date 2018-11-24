.class public final Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;
.super Ljava/lang/Object;
.source "DeleteRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sdk/healthdata/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

.field private c:Ljava/util/List;
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
    .line 67
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/f;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/f;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->c:Ljava/util/List;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->a:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->b:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->c:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->c:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->b:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 42
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->c:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->a:Ljava/lang/String;

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
    .line 98
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getFilter()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->b:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->b:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 62
    return-void
.end method
