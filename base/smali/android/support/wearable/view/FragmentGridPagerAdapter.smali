.class public abstract Landroid/support/wearable/view/FragmentGridPagerAdapter;
.super Landroid/support/wearable/view/GridPagerAdapter;
.source "FragmentGridPagerAdapter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final MAX_ROWS:I = 0xffff

.field private static final NOOP_BACKGROUND_OBSERVER:Landroid/support/wearable/view/GridPageOptions$BackgroundListener;


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mFragmentPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Point;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Landroid/support/wearable/view/FragmentGridPagerAdapter$1;

    invoke-direct {v0}, Landroid/support/wearable/view/FragmentGridPagerAdapter$1;-><init>()V

    sput-object v0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->NOOP_BACKGROUND_OBSERVER:Landroid/support/wearable/view/GridPageOptions$BackgroundListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/wearable/view/GridPagerAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    .line 44
    return-void
.end method

.method static synthetic access$100(Landroid/support/wearable/view/FragmentGridPagerAdapter;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;

    return-object v0
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyItemPosition(Ljava/lang/Object;Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Landroid/support/wearable/view/GridPagerAdapter;->POSITION_UNCHANGED:Landroid/graphics/Point;

    if-ne p2, v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 157
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    .line 158
    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_1
    sget-object v0, Landroid/support/wearable/view/GridPagerAdapter;->POSITION_NONE:Landroid/graphics/Point;

    if-ne p2, v0, :cond_2

    .line 162
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 139
    :cond_0
    check-cast p4, Landroid/app/Fragment;

    .line 140
    instance-of v0, p4, Landroid/support/wearable/view/GridPageOptions;

    if-eqz v0, :cond_1

    move-object v0, p4

    .line 143
    check-cast v0, Landroid/support/wearable/view/GridPageOptions;

    sget-object v1, Landroid/support/wearable/view/FragmentGridPagerAdapter;->NOOP_BACKGROUND_OBSERVER:Landroid/support/wearable/view/GridPageOptions$BackgroundListener;

    invoke-interface {v0, v1}, Landroid/support/wearable/view/GridPageOptions;->setBackgroundListener(Landroid/support/wearable/view/GridPageOptions$BackgroundListener;)V

    .line 145
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p0, p4, v0}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 146
    return-void
.end method

.method public findExistingFragment(II)Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iput-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 219
    iput-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 220
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method public getBackgroundForPage(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->getFragmentBackground(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFragment(II)Landroid/app/Fragment;
.end method

.method public final getFragmentBackground(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    iget-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 180
    sget-object v1, Landroid/support/wearable/view/FragmentGridPagerAdapter;->BACKGROUND_NONE:Landroid/graphics/drawable/Drawable;

    .line 181
    instance-of v2, v0, Landroid/support/wearable/view/GridPageOptions;

    if-eqz v2, :cond_0

    .line 182
    check-cast v0, Landroid/support/wearable/view/GridPageOptions;

    invoke-interface {v0}, Landroid/support/wearable/view/GridPageOptions;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getFragmentId(II)J
    .locals 2

    .prologue
    .line 75
    const v0, 0xffff

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;II)Landroid/app/Fragment;
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 84
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->getFragmentId(II)J

    move-result-wide v0

    .line 85
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 88
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    invoke-virtual {p0, p2, p3}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->getFragment(II)Landroid/app/Fragment;

    move-result-object v1

    .line 91
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 95
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 96
    iget-object v3, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v3, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mFragmentPositions:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    instance-of v0, v1, Landroid/support/wearable/view/GridPageOptions;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 99
    check-cast v0, Landroid/support/wearable/view/GridPageOptions;

    .line 100
    new-instance v3, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;-><init>(Landroid/support/wearable/view/FragmentGridPagerAdapter;Ljava/lang/String;Landroid/support/wearable/view/FragmentGridPagerAdapter$1;)V

    invoke-interface {v0, v3}, Landroid/support/wearable/view/GridPageOptions;->setBackgroundListener(Landroid/support/wearable/view/GridPageOptions$BackgroundListener;)V

    .line 102
    :cond_1
    return-object v1

    .line 93
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p0, v1, v0}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->restoreFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    goto :goto_0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;II)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 131
    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 150
    return-void
.end method

.method protected restoreFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method
