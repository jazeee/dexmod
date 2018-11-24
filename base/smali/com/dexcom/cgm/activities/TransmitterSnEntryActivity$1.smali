.class Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity$1;
.super Ljava/lang/Object;
.source "TransmitterSnEntryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;

.field final synthetic val$layoutID:I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;I)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity$1;->this$0:Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;

    iput p2, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity$1;->val$layoutID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity$1;->this$0:Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    iget v1, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity$1;->val$layoutID:I

    .line 120
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity$1;->this$0:Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_common_transmitter:I

    .line 122
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 124
    return-void
.end method
