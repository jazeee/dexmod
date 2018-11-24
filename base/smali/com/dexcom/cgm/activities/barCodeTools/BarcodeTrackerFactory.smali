.class public Lcom/dexcom/cgm/activities/barCodeTools/BarcodeTrackerFactory;
.super Ljava/lang/Object;
.source "BarcodeTrackerFactory.java"

# interfaces
.implements Lcom/google/android/gms/vision/MultiProcessor$Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/MultiProcessor$Factory",
        "<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation


# instance fields
.field private mGraphicOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeTrackerFactory;->mGraphicOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    .line 28
    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/gms/vision/barcode/Barcode;)Lcom/google/android/gms/vision/Tracker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ")",
            "Lcom/google/android/gms/vision/Tracker",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeTrackerFactory;->mGraphicOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;-><init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V

    .line 33
    new-instance v1, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeTrackerFactory;->mGraphicOverlay:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;

    invoke-direct {v1, v2, v0}, Lcom/dexcom/cgm/activities/barCodeTools/GraphicTracker;-><init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;)V

    return-object v1
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Lcom/google/android/gms/vision/Tracker;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeTrackerFactory;->create(Lcom/google/android/gms/vision/barcode/Barcode;)Lcom/google/android/gms/vision/Tracker;

    move-result-object v0

    return-object v0
.end method
