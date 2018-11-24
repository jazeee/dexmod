.class Lcom/dexcom/cgm/activities/DexDialogBuilder$2;
.super Ljava/lang/Object;
.source "DexDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/DexDialogBuilder;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$2;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$2;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->access$102(Lcom/dexcom/cgm/activities/DexDialogBuilder;Z)Z

    .line 117
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$2;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->access$000(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 118
    return-void
.end method
