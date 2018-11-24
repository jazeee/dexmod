.class final Lcom/dexcom/cgm/activities/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$stringID:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/dexcom/cgm/activities/LoginActivity$4;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/dexcom/cgm/activities/LoginActivity$4;->val$stringID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 321
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/LoginActivity$4;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    iget v1, p0, Lcom/dexcom/cgm/activities/LoginActivity$4;->val$stringID:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 322
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/LoginActivity$4;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/dexcom/cgm/activities/LoginActivity$4;->val$stringID:I

    .line 323
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 325
    return-void
.end method
