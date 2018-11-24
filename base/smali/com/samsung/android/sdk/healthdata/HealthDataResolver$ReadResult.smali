.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;
.super Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
.source "HealthDataResolver.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;",
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
    .line 1654
    new-instance v0, Lcom/samsung/android/sdk/healthdata/u;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/u;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1636
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 1637
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->b:Ljava/lang/String;

    .line 1638
    const-class v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    .line 1639
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 1602
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 1612
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 1613
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->b:Ljava/lang/String;

    .line 1614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    .line 1615
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 1

    .prologue
    .line 1621
    if-eqz p3, :cond_0

    iget v0, p3, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 1622
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->b:Ljava/lang/String;

    .line 1623
    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    .line 1624
    return-void

    .line 1621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 2

    .prologue
    .line 1630
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget v0, p2, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 1631
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->b:Ljava/lang/String;

    .line 1632
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    .line 1633
    return-void

    .line 1630
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->c:Z

    if-nez v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    iget-object v0, v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->cursor:Lcom/samsung/android/sdk/internal/database/d;

    .line 1672
    if-eqz v0, :cond_0

    .line 1673
    invoke-interface {v0}, Lcom/samsung/android/sdk/internal/database/d;->close()V

    .line 1676
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1677
    return-void
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    if-nez v0, :cond_0

    .line 1688
    const/4 v0, 0x0

    .line 1694
    :goto_0
    return-object v0

    .line 1691
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/internal/database/c;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/database/c;-><init>()V

    .line 1692
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/internal/database/c;->initialize(Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V

    .line 1693
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->c:Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1646
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1647
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->a:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1649
    return-void
.end method
