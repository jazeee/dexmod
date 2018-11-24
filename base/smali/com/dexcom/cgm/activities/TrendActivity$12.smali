.class Lcom/dexcom/cgm/activities/TrendActivity$12;
.super Ljava/lang/Object;
.source "TrendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$12;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$12;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$900(Lcom/dexcom/cgm/activities/TrendActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$12;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$900(Lcom/dexcom/cgm/activities/TrendActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendActivity$12;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/TrendActivity;->access$1000(Lcom/dexcom/cgm/activities/TrendActivity;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 826
    return-void
.end method
