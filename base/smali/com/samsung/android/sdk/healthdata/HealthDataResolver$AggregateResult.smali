.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;
.super Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
.source "HealthDataResolver.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2794
    new-instance v0, Lcom/samsung/android/sdk/healthdata/p;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/p;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 2776
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 2777
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->b:Ljava/lang/String;

    .line 2778
    const-class v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    .line 2779
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 2742
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 2752
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 2753
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->b:Ljava/lang/String;

    .line 2754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    .line 2755
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 1

    .prologue
    .line 2761
    if-eqz p3, :cond_0

    iget v0, p3, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 2762
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->b:Ljava/lang/String;

    .line 2763
    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    .line 2764
    return-void

    .line 2761
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 2

    .prologue
    .line 2770
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    iget v0, p2, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 2771
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->b:Ljava/lang/String;

    .line 2772
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    .line 2773
    return-void

    .line 2770
    :cond_0
    const/4 v0, 0x4

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->c:Z

    if-nez v0, :cond_0

    .line 2811
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    iget-object v0, v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->cursor:Lcom/samsung/android/sdk/internal/database/d;

    .line 2812
    if-eqz v0, :cond_0

    .line 2813
    invoke-interface {v0}, Lcom/samsung/android/sdk/internal/database/d;->close()V

    .line 2816
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2817
    return-void
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    if-nez v0, :cond_0

    .line 2828
    const/4 v0, 0x0

    .line 2834
    :goto_0
    return-object v0

    .line 2831
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/internal/database/c;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/database/c;-><init>()V

    .line 2832
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/internal/database/c;->initialize(Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V

    .line 2833
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->c:Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 2786
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2787
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2788
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2789
    return-void
.end method
