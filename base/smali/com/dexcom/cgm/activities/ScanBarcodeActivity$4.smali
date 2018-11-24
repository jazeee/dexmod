.class Lcom/dexcom/cgm/activities/ScanBarcodeActivity$4;
.super Ljava/lang/Object;
.source "ScanBarcodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$4;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$4;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$4;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    .line 401
    invoke-static {v2}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->access$200(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)I

    move-result v2

    .line 399
    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 402
    return-void
.end method
