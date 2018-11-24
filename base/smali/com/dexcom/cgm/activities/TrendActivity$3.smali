.class Lcom/dexcom/cgm/activities/TrendActivity$3;
.super Ljava/lang/Object;
.source "TrendActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$3;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$3;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$200(Lcom/dexcom/cgm/activities/TrendActivity;)V

    .line 138
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method
