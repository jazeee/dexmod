.class Lcom/dexcom/cgm/activities/FAQActivity$1;
.super Ljava/lang/Object;
.source "FAQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/FAQActivity;

.field final synthetic val$stringID:I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/FAQActivity;I)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/dexcom/cgm/activities/FAQActivity$1;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    iput p2, p0, Lcom/dexcom/cgm/activities/FAQActivity$1;->val$stringID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/FAQActivity$1;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    iget v1, p0, Lcom/dexcom/cgm/activities/FAQActivity$1;->val$stringID:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/FAQActivity$1;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    iget v2, p0, Lcom/dexcom/cgm/activities/FAQActivity$1;->val$stringID:I

    .line 92
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/FAQActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 94
    return-void
.end method
