.class Lcom/dexcom/cgm/activities/SetupWizardFragment$3;
.super Ljava/lang/Object;
.source "SetupWizardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/SetupWizardFragment;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$3;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SetupWizardFragment$3;->this$0:Lcom/dexcom/cgm/activities/SetupWizardFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/SetupWizardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 271
    return-void
.end method
