.class Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$SurfaceCallback;
.super Ljava/lang/Object;
.source "CameraSourcePreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$1;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$SurfaceCallback;-><init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->access$102(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;Z)Z

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->access$200(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v1, "CameraSourcePreview"

    const-string v2, "Could not start camera source."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;->access$102(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/CameraSourcePreview;Z)Z

    .line 108
    return-void
.end method
