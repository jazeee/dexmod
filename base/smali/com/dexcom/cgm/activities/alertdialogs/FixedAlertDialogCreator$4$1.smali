.class Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;
.super Landroid/text/style/ClickableSpan;
.source "FixedAlertDialogCreator.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4;

.field final synthetic val$dexcomName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;->this$0:Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;->val$dexcomName:Ljava/lang/String;

    iput-object p3, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1$1;-><init>(Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method
