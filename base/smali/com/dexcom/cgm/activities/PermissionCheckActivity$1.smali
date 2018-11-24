.class Lcom/dexcom/cgm/activities/PermissionCheckActivity$1;
.super Ljava/lang/Object;
.source "PermissionCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/PermissionCheckActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/PermissionCheckActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dexcom/cgm/activities/PermissionCheckActivity$1;->this$0:Lcom/dexcom/cgm/activities/PermissionCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    iget-object v3, p0, Lcom/dexcom/cgm/activities/PermissionCheckActivity$1;->this$0:Lcom/dexcom/cgm/activities/PermissionCheckActivity;

    .line 78
    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/dexcom/cgm/activities/PermissionCheckActivity$1;->this$0:Lcom/dexcom/cgm/activities/PermissionCheckActivity;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/PermissionCheckActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
