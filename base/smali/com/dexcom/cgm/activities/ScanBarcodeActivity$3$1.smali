.class Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3$1;
.super Ljava/lang/Object;
.source "ScanBarcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$3;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->finish()V

    .line 234
    return-void
.end method
