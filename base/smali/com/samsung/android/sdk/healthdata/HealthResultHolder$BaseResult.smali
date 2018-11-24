.class public Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
.super Ljava/lang/Object;
.source "HealthResultHolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CANCELED:I = 0x2

.field public static final STATUS_FAILED:I = 0x4

.field public static final STATUS_INVALID_INPUT_DATA:I = 0x8

.field public static final STATUS_OUT_OF_SPACE:I = 0x10

.field public static final STATUS_SUCCESSFUL:I = 0x1

.field public static final STATUS_UNKNOWN:I


# instance fields
.field protected final mCached:Z

.field protected final mCount:I

.field protected final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/samsung/android/sdk/healthdata/ai;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/ai;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    .line 179
    iput p2, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCached:Z

    .line 181
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    .line 188
    iput p2, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    .line 189
    iput-boolean p3, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCached:Z

    .line 190
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCached:Z

    .line 197
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
