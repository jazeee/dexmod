.class abstract Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;
.super Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;
.source "TrackedGraphic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;"
    }
.end annotation


# instance fields
.field private mId:I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay$Graphic;-><init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;->mId:I

    return v0
.end method

.method setId(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;->mId:I

    .line 25
    return-void
.end method

.method abstract updateItem(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
