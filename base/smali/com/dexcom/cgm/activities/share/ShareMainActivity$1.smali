.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$1;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->onShareSwitchToggled()V

    .line 95
    return-void
.end method
