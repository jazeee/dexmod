.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$2;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->onBackPressed()V

    .line 136
    return-void
.end method
