.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;
.super Ljava/lang/Object;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

.field final synthetic val$stringID:I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;I)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    iput p2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->val$stringID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    new-instance v1, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$400(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    iget v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->val$stringID:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$302(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/DexDialogBuilder;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 256
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$300(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_text_retry:I

    new-instance v2, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4$1;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 264
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$300(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_text_exit_app:I

    new-instance v2, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4$2;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 272
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$300(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 273
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$300(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->val$stringID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 274
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$300(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 275
    return-void
.end method
