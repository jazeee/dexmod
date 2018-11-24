.class Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;
.super Lcom/google/android/gms/vision/FocusingProcessor;
.source "ScanBarcodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/FocusingProcessor",
        "<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;Lcom/google/android/gms/vision/Detector;Lcom/google/android/gms/vision/Tracker;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/vision/FocusingProcessor;-><init>(Lcom/google/android/gms/vision/Detector;Lcom/google/android/gms/vision/Tracker;)V

    return-void
.end method


# virtual methods
.method public receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    if-eqz p1, :cond_4

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object v5

    .line 110
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v2

    .line 113
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 115
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 116
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 118
    if-eqz v0, :cond_6

    .line 120
    iget-object v4, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 122
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x1c

    if-ge v0, v6, :cond_7

    move v0, v2

    .line 125
    :goto_1
    iget-object v6, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iput-object v9, v6, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcode_result:Ljava/lang/String;

    .line 127
    :cond_0
    :goto_2
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v6, v6, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcode_result:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 130
    const-string v6, "214"

    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 133
    if-gez v6, :cond_2

    move v0, v2

    .line 152
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v6, v6, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcode_result:Ljava/lang/String;

    .line 153
    invoke-static {v6}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIdValid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v2

    .line 157
    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    if-le v7, v8, :cond_1

    .line 142
    add-int/lit8 v6, v6, 0x2

    .line 143
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    iget-object v6, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    const/4 v7, 0x6

    .line 146
    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcode_result:Ljava/lang/String;

    goto :goto_3

    .line 161
    :cond_3
    if-eqz v0, :cond_6

    .line 163
    new-instance v0, Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v4, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v4, v4, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcode_result:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/dexcom/cgm/model/TransmitterId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIdArcher()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-static {v0, v1, v9}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->createDialogForFixedAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;

    .line 187
    :cond_4
    return-void

    .line 170
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    const-string v4, "BARCODE"

    iget-object v6, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    iget-object v6, v6, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->barcode_result:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v4, "RESULT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    iget-object v4, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    const/4 v6, -0x1

    invoke-virtual {v4, v6, v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$1;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->access$000(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V

    .line 113
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto :goto_1
.end method

.method public selectFocus(Lcom/google/android/gms/vision/Detector$Detections;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method
