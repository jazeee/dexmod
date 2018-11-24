.class Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;
.super Ljava/lang/Object;
.source "DexDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final m_listener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/activities/DexDialogBuilder;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;->m_listener:Landroid/view/View$OnClickListener;

    .line 269
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;->m_listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 275
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->access$000(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 276
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->access$102(Lcom/dexcom/cgm/activities/DexDialogBuilder;Z)Z

    .line 277
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->access$200(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 280
    iget-object v2, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->access$300(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->access$400(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertDialogDisappearing(Ljava/lang/String;J)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;->this$0:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->access$400(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logDialogDisappearing(Ljava/lang/String;J)V

    goto :goto_0
.end method
