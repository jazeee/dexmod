.class Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;
.super Lcom/google/android/gms/vision/Tracker;
.source "GraphicTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/vision/Tracker",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mGraphic:Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;",
            "Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/vision/Tracker;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    .line 25
    iput-object p2, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mGraphic:Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;

    .line 26
    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mGraphic:Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->remove(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;)V

    .line 62
    return-void
.end method

.method public onMissing(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mGraphic:Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->remove(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;)V

    .line 53
    return-void
.end method

.method public onNewItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mGraphic:Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;->setId(I)V

    .line 34
    return-void
.end method

.method public onUpdate(Lcom/google/android/gms/vision/Detector$Detections;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mGraphic:Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;->add(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;)V

    .line 42
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;->mGraphic:Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;->updateItem(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
