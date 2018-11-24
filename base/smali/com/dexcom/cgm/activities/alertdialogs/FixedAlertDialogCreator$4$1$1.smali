.class Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1$1;
.super Ljava/lang/Object;
.source "FixedAlertDialogCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1$1;->this$1:Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1$1;->this$1:Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;->val$dexcomName:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1$1;->this$1:Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method
