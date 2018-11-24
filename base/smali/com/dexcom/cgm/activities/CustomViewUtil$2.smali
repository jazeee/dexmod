.class final Lcom/dexcom/cgm/activities/CustomViewUtil$2;
.super Ljava/lang/Object;
.source "CustomViewUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handlerName:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$2;->val$handlerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$2;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/CustomViewUtil$2;->val$handlerName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/activities/CustomViewUtil;->setupDowork(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 48
    return-void
.end method
