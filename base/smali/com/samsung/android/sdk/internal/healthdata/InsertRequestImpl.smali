.class public final Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;
.super Ljava/lang/Object;
.source "InsertRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sdk/healthdata/s;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/s;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/s;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->a:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->b:Ljava/util/List;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->b:Ljava/util/List;

    .line 41
    return-void
.end method

.method private static a(Lcom/samsung/android/sdk/healthdata/HealthData;)V
    .locals 2

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthData;->getSourceDevice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source device is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public final addHealthData(Lcom/samsung/android/sdk/healthdata/HealthData;)V
    .locals 1

    .prologue
    .line 88
    invoke-static {p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->a(Lcom/samsung/android/sdk/healthdata/HealthData;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public final addHealthData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    .line 102
    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->a(Lcom/samsung/android/sdk/healthdata/HealthData;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    return-void
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->b:Ljava/util/List;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    return-void
.end method
