.class Lcom/dexcom/cgm/activities/TrendActivity$13;
.super Ljava/lang/Object;
.source "TrendActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$13;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$13;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$900(Lcom/dexcom/cgm/activities/TrendActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$13;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$900(Lcom/dexcom/cgm/activities/TrendActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    const/4 v0, 0x1

    return v0
.end method
