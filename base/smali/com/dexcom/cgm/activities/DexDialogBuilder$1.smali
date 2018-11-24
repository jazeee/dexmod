.class Lcom/dexcom/cgm/activities/DexDialogBuilder$1;
.super Ljava/lang/Object;
.source "DexDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/DexDialogBuilder;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$1;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$1;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->access$000(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    return-void
.end method
