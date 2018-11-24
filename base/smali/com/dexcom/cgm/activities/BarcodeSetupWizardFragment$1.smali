.class Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;
.super Lcom/google/android/gms/vision/FocusingProcessor;
.source "BarcodeSetupWizardFragment.java"


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
.field final synthetic this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;Lcom/google/android/gms/vision/Detector;Lcom/google/android/gms/vision/Tracker;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/vision/FocusingProcessor;-><init>(Lcom/google/android/gms/vision/Detector;Lcom/google/android/gms/vision/Tracker;)V

    return-void
.end method


# virtual methods
.method public receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 9
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
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 136
    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object v5

    .line 141
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v2

    .line 144
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 146
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 147
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/barcode/Barcode;

    .line 148
    const/4 v3, 0x1

    .line 150
    if-eqz v0, :cond_6

    .line 152
    iget-object v4, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 154
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x1c

    if-ge v0, v6, :cond_7

    move v0, v2

    .line 157
    :goto_1
    iget-object v3, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    iput-object v8, v3, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcode_result:Ljava/lang/String;

    move-object v3, v4

    .line 159
    :cond_0
    :goto_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    iget-object v4, v4, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcode_result:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 162
    const-string v4, "214"

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 165
    if-gez v4, :cond_2

    move v0, v2

    .line 183
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    iget-object v4, v4, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcode_result:Ljava/lang/String;

    .line 184
    invoke-static {v4}, Lcom/dexcom/cgm/h/a/e;->isTransmitterIdValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 188
    goto :goto_2

    .line 171
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    if-le v6, v7, :cond_1

    .line 173
    add-int/lit8 v4, v4, 0x2

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v4, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    const/4 v6, 0x6

    .line 177
    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcode_result:Ljava/lang/String;

    goto :goto_3

    .line 192
    :cond_3
    if-eqz v0, :cond_6

    .line 194
    new-instance v0, Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    iget-object v3, v3, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcode_result:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/dexcom/cgm/model/TransmitterId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIdArcher()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-static {v0, v1, v8}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->createDialogForFixedAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;

    .line 219
    :cond_4
    return-void

    .line 201
    :cond_5
    new-instance v0, Lcom/dexcom/cgm/h/a/e;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    iget-object v3, v3, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->barcode_result:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/dexcom/cgm/h/a/e;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v3

    .line 206
    invoke-interface {v3, v0}, Lcom/dexcom/cgm/i/a;->setTransmitterId(Lcom/dexcom/cgm/h/a/e;)V

    .line 208
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment$1;->this$0:Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;->access$000(Lcom/dexcom/cgm/activities/BarcodeSetupWizardFragment;)V

    .line 144
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
    .line 224
    const/4 v0, 0x0

    return v0
.end method
