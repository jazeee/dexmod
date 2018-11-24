.class public abstract Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;
.super Ljava/lang/Object;
.source "GraphicOverlay.java"


# instance fields
.field private mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    .line 55
    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 108
    return-void
.end method

.method public scaleX(F)F
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->access$000(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public scaleY(F)F
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->access$100(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public translateX(F)F
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->access$200(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->scaleX(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->scaleX(F)F

    move-result v0

    goto :goto_0
.end method

.method public translateY(F)F
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;->scaleY(F)F

    move-result v0

    return v0
.end method
