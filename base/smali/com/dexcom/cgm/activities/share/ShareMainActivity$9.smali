.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

.field final synthetic val$internetStatus:Z

.field final synthetic val$overallStatus:Z

.field final synthetic val$phoneStatus:Z

.field final synthetic val$serverStatus:Z


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;ZZZZ)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->val$overallStatus:Z

    iput-boolean p3, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->val$phoneStatus:Z

    iput-boolean p4, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->val$internetStatus:Z

    iput-boolean p5, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->val$serverStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->share_overall_status_image:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 363
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->val$overallStatus:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_green_check:I

    .line 364
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->share_individual_status_image:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 368
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->val$phoneStatus:Z

    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->val$internetStatus:Z

    iget-boolean v3, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->val$serverStatus:Z

    invoke-static {v1, v2, v3}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$900(ZZZ)I

    move-result v1

    .line 371
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_tip:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;->val$overallStatus:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 375
    return-void

    .line 363
    :cond_0
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_red_x:I

    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
