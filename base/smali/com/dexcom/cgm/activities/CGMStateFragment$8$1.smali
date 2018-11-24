.class Lcom/dexcom/cgm/activities/CGMStateFragment$8$1;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$8;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$8;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$8$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$8$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$8;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$8;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    .line 984
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 983
    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->showSensorRemovalHelp(Landroid/app/Activity;)V

    .line 985
    return-void
.end method
