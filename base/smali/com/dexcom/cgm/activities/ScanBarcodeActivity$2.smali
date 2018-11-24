.class Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;
.super Ljava/lang/Object;
.source "ScanBarcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->myDexDialog:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->myDexDialog:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->currentlyVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    new-instance v1, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v2, v2, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->myDexDialog:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 208
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->myDexDialog:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_bad_barcode:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 209
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$2;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_common_transmitter:I

    .line 210
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 213
    :cond_1
    return-void
.end method
