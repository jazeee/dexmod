.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$7;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

.field final synthetic val$shareEnabled:Z


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$7;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$7;->val$shareEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$7;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->share_toggle:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$7;->val$shareEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    return-void
.end method
