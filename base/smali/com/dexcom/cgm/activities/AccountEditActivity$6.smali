.class Lcom/dexcom/cgm/activities/AccountEditActivity$6;
.super Ljava/lang/Object;
.source "AccountEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$6;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 567
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$6;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    invoke-static {v0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 570
    return-void
.end method
