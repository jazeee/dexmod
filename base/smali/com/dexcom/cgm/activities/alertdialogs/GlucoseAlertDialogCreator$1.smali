.class final Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator$1;
.super Ljava/lang/Object;
.source "GlucoseAlertDialogCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$onAcknowledge:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator$1;->val$onAcknowledge:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator$1;->val$onAcknowledge:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator$1;->val$onAcknowledge:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 182
    :cond_0
    return-void
.end method
