.class public abstract Landroid/support/wearable/view/GridPagerAdapter;
.super Ljava/lang/Object;
.source "GridPagerAdapter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field public static final BACKGROUND_NONE:Landroid/graphics/drawable/Drawable;

.field public static final OPTION_DISABLE_PARALLAX:I = 0x1

.field public static final PAGE_DEFAULT_OPTIONS:I

.field public static final POSITION_NONE:Landroid/graphics/Point;

.field public static final POSITION_UNCHANGED:Landroid/graphics/Point;


# instance fields
.field private mObservable:Landroid/database/DataSetObservable;

.field private mOnBackgroundChangeListener:Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 32
    new-instance v0, Landroid/support/wearable/view/GridPagerAdapter$NoOpDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/wearable/view/GridPagerAdapter$NoOpDrawable;-><init>(Landroid/support/wearable/view/GridPagerAdapter$1;)V

    sput-object v0, Landroid/support/wearable/view/GridPagerAdapter;->BACKGROUND_NONE:Landroid/graphics/drawable/Drawable;

    .line 44
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Landroid/support/wearable/view/GridPagerAdapter;->POSITION_NONE:Landroid/graphics/Point;

    .line 45
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Landroid/support/wearable/view/GridPagerAdapter;->POSITION_UNCHANGED:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/GridPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    .line 289
    return-void
.end method


# virtual methods
.method protected applyItemPosition(Ljava/lang/Object;Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public abstract destroyItem(Landroid/view/ViewGroup;IILjava/lang/Object;)V
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public getBackgroundForPage(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Landroid/support/wearable/view/GridPagerAdapter;->BACKGROUND_NONE:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundForRow(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/support/wearable/view/GridPagerAdapter;->BACKGROUND_NONE:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public abstract getColumnCount(I)I
.end method

.method public getCurrentColumnForRow(II)I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Landroid/support/wearable/view/GridPagerAdapter;->POSITION_NONE:Landroid/graphics/Point;

    return-object v0
.end method

.method public getOptionsForPage(II)I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getRowCount()I
.end method

.method public abstract instantiateItem(Landroid/view/ViewGroup;II)Ljava/lang/Object;
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/wearable/view/GridPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 247
    return-void
.end method

.method public notifyPageBackgroundChanged(II)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/wearable/view/GridPagerAdapter;->mOnBackgroundChangeListener:Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/support/wearable/view/GridPagerAdapter;->mOnBackgroundChangeListener:Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;->onPageBackgroundChanged(II)V

    .line 201
    :cond_0
    return-void
.end method

.method public notifyRowBackgroundChanged(I)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/wearable/view/GridPagerAdapter;->mOnBackgroundChangeListener:Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/support/wearable/view/GridPagerAdapter;->mOnBackgroundChangeListener:Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;

    invoke-interface {v0, p1}, Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;->onRowBackgroundChanged(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/wearable/view/GridPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCurrentColumnForRow(II)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method setOnBackgroundChangeListener(Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Landroid/support/wearable/view/GridPagerAdapter;->mOnBackgroundChangeListener:Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;

    .line 221
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/wearable/view/GridPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 239
    return-void
.end method
