.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$11$1;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11$1;->this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11$1;->this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast()V

    .line 507
    return-void
.end method
