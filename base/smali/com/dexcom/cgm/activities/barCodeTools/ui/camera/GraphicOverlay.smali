.class public Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;
.super Landroid/view/View;
.source "GraphicOverlay.java"


# instance fields
.field private mFacing:I

.field private mGraphics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightScaleFactor:F

.field private final mLock:Ljava/lang/Object;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mWidthScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    .line 39
    iput v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mWidthScaleFactor:F

    .line 41
    iput v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mHeightScaleFactor:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mFacing:I

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mWidthScaleFactor:F

    return v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mHeightScaleFactor:F

    return v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mFacing:I

    return v0
.end method


# virtual methods
.method public add(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;)V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    iget v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mPreviewHeight:I

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mPreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mWidthScaleFactor:F

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mPreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mHeightScaleFactor:F

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;

    .line 172
    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public remove(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;)V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCameraInfo(III)V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iput p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mPreviewWidth:I

    .line 152
    iput p2, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mPreviewHeight:I

    .line 153
    iput p3, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->mFacing:I

    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 156
    return-void

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
