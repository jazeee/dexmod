.class Lcom/dexcom/cgm/activities/ChangePasswordActivity$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ChangePasswordActivity$1;->this$0:Lcom/dexcom/cgm/activities/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ChangePasswordActivity$1;->this$0:Lcom/dexcom/cgm/activities/ChangePasswordActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast()V

    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ChangePasswordActivity$1;->this$0:Lcom/dexcom/cgm/activities/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ChangePasswordActivity;->finish()V

    .line 55
    return-void
.end method
