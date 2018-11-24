.class Lcom/dexcom/cgm/activities/ToastHelper$2;
.super Landroid/os/CountDownTimer;
.source "ToastHelper.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ToastHelper;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ToastHelper;JJLandroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ToastHelper$2;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    iput-object p6, p0, Lcom/dexcom/cgm/activities/ToastHelper$2;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ToastHelper$2;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ToastHelper$2;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/ToastHelper;->access$200(Lcom/dexcom/cgm/activities/ToastHelper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ToastHelper$2;->this$0:Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/ToastHelper;->access$200(Lcom/dexcom/cgm/activities/ToastHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 122
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ToastHelper$2;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method
