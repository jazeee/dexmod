.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$5;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

.field final synthetic val$trendGraphSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Landroid/widget/Switch;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$5;->val$trendGraphSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 248
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$5;->val$trendGraphSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$5;->val$trendGraphSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 249
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
