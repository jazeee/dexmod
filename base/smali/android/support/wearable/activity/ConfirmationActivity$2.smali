.class Landroid/support/wearable/activity/ConfirmationActivity$2;
.super Ljava/lang/Object;
.source "ConfirmationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/wearable/activity/ConfirmationActivity;


# direct methods
.method constructor <init>(Landroid/support/wearable/activity/ConfirmationActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Landroid/support/wearable/activity/ConfirmationActivity$2;->this$0:Landroid/support/wearable/activity/ConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity$2;->this$0:Landroid/support/wearable/activity/ConfirmationActivity;

    invoke-virtual {v0}, Landroid/support/wearable/activity/ConfirmationActivity;->finish()V

    .line 130
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity$2;->this$0:Landroid/support/wearable/activity/ConfirmationActivity;

    const/4 v1, 0x0

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/activity/ConfirmationActivity;->overridePendingTransition(II)V

    .line 131
    return-void
.end method
