.class Landroid/support/wearable/view/GridViewPager$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "GridViewPager.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/wearable/view/GridViewPager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentX:I

.field currentY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1254
    new-instance v0, Landroid/support/wearable/view/GridViewPager$SavedState$1;

    invoke-direct {v0}, Landroid/support/wearable/view/GridViewPager$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/wearable/view/GridViewPager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1268
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentX:I

    .line 1270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentY:I

    .line 1271
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/wearable/view/GridViewPager$1;)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1243
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1244
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1248
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1249
    iget v0, p0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    iget v0, p0, Landroid/support/wearable/view/GridViewPager$SavedState;->currentY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    return-void
.end method
