.class final Landroid/support/wearable/view/GridViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "GridViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/wearable/view/GridViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/wearable/view/GridViewPager$SavedState;
    .locals 2

    .prologue
    .line 1258
    new-instance v0, Landroid/support/wearable/view/GridViewPager$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/wearable/view/GridViewPager$SavedState;-><init>(Landroid/os/Parcel;Landroid/support/wearable/view/GridViewPager$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1255
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/GridViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/wearable/view/GridViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Landroid/support/wearable/view/GridViewPager$SavedState;
    .locals 1

    .prologue
    .line 1263
    new-array v0, p1, [Landroid/support/wearable/view/GridViewPager$SavedState;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1255
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/GridViewPager$SavedState$1;->newArray(I)[Landroid/support/wearable/view/GridViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method
