.class Lcom/dexcom/cgm/activities/Spinner$4;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/Spinner;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/Spinner;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$000(Lcom/dexcom/cgm/activities/Spinner;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/Spinner;->access$100(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/Spinner;->access$202(Lcom/dexcom/cgm/activities/Spinner;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->spinner:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 102
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 103
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 104
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->nothing:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 105
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$300(Lcom/dexcom/cgm/activities/Spinner;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/Spinner$4$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/Spinner$4$1;-><init>(Lcom/dexcom/cgm/activities/Spinner$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$4;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 116
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
